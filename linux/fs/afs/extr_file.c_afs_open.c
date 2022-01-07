
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct key {int dummy; } ;
struct inode {int dummy; } ;
struct file {int f_mode; int f_flags; struct afs_file* private_data; } ;
struct TYPE_3__ {int vnode; int vid; } ;
struct afs_vnode {int flags; TYPE_2__* volume; TYPE_1__ fid; } ;
struct afs_file {struct key* key; } ;
struct TYPE_4__ {int cell; } ;


 struct afs_vnode* AFS_FS_I (struct inode*) ;
 int AFS_VNODE_NEW_CONTENT ;
 int ENOMEM ;
 int FMODE_WRITE ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct key*) ;
 int O_TRUNC ;
 int PTR_ERR (struct key*) ;
 int _enter (char*,int ,int ) ;
 int _leave (char*,...) ;
 int afs_cache_wb_key (struct afs_vnode*,struct afs_file*) ;
 struct key* afs_request_key (int ) ;
 int afs_validate (struct afs_vnode*,struct key*) ;
 int key_put (struct key*) ;
 int kfree (struct afs_file*) ;
 struct afs_file* kzalloc (int,int ) ;
 int set_bit (int ,int *) ;

int afs_open(struct inode *inode, struct file *file)
{
 struct afs_vnode *vnode = AFS_FS_I(inode);
 struct afs_file *af;
 struct key *key;
 int ret;

 _enter("{%llx:%llu},", vnode->fid.vid, vnode->fid.vnode);

 key = afs_request_key(vnode->volume->cell);
 if (IS_ERR(key)) {
  ret = PTR_ERR(key);
  goto error;
 }

 af = kzalloc(sizeof(*af), GFP_KERNEL);
 if (!af) {
  ret = -ENOMEM;
  goto error_key;
 }
 af->key = key;

 ret = afs_validate(vnode, key);
 if (ret < 0)
  goto error_af;

 if (file->f_mode & FMODE_WRITE) {
  ret = afs_cache_wb_key(vnode, af);
  if (ret < 0)
   goto error_af;
 }

 if (file->f_flags & O_TRUNC)
  set_bit(AFS_VNODE_NEW_CONTENT, &vnode->flags);

 file->private_data = af;
 _leave(" = 0");
 return 0;

error_af:
 kfree(af);
error_key:
 key_put(key);
error:
 _leave(" = %d", ret);
 return ret;
}
