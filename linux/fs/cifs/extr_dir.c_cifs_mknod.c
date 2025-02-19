
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int umode_t ;
struct tcon_link {int dummy; } ;
struct inode {int i_sb; } ;
struct dentry {int dummy; } ;
struct cifs_tcon {TYPE_3__* ses; } ;
struct cifs_sb_info {int dummy; } ;
typedef int dev_t ;
struct TYPE_6__ {TYPE_2__* server; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* make_node ) (unsigned int,struct inode*,struct dentry*,struct cifs_tcon*,char*,int ,int ) ;} ;


 struct cifs_sb_info* CIFS_SB (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int PTR_ERR (struct tcon_link*) ;
 char* build_path_from_dentry (struct dentry*) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 int free_xid (unsigned int) ;
 unsigned int get_xid () ;
 int kfree (char*) ;
 int old_valid_dev (int ) ;
 int stub1 (unsigned int,struct inode*,struct dentry*,struct cifs_tcon*,char*,int ,int ) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

int cifs_mknod(struct inode *inode, struct dentry *direntry, umode_t mode,
  dev_t device_number)
{
 int rc = -EPERM;
 unsigned int xid;
 struct cifs_sb_info *cifs_sb;
 struct tcon_link *tlink;
 struct cifs_tcon *tcon;
 char *full_path = ((void*)0);

 if (!old_valid_dev(device_number))
  return -EINVAL;

 cifs_sb = CIFS_SB(inode->i_sb);
 tlink = cifs_sb_tlink(cifs_sb);
 if (IS_ERR(tlink))
  return PTR_ERR(tlink);

 tcon = tlink_tcon(tlink);

 xid = get_xid();

 full_path = build_path_from_dentry(direntry);
 if (full_path == ((void*)0)) {
  rc = -ENOMEM;
  goto mknod_out;
 }

 rc = tcon->ses->server->ops->make_node(xid, inode, direntry, tcon,
            full_path, mode,
            device_number);

mknod_out:
 kfree(full_path);
 free_xid(xid);
 cifs_put_tlink(tlink);
 return rc;
}
