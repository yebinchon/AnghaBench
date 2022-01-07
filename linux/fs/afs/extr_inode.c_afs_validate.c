
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {int dummy; } ;
struct TYPE_2__ {int vnode; int vid; } ;
struct afs_vnode {int validate_lock; int flags; int vfs_inode; TYPE_1__ fid; } ;


 int AFS_VNODE_CB_PROMISED ;
 int AFS_VNODE_DELETED ;
 int AFS_VNODE_ZAP_DATA ;
 int ENOENT ;
 int ESTALE ;
 int _debug (char*,...) ;
 int _enter (char*,int ,int ,int ,int ) ;
 int _leave (char*,...) ;
 int afs_check_validity (struct afs_vnode*) ;
 int afs_fetch_status (struct afs_vnode*,struct key*,int,int *) ;
 int afs_zap_data (struct afs_vnode*) ;
 int clear_nlink (int *) ;
 int down_write (int *) ;
 int key_serial (struct key*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int up_write (int *) ;

int afs_validate(struct afs_vnode *vnode, struct key *key)
{
 bool valid;
 int ret;

 _enter("{v={%llx:%llu} fl=%lx},%x",
        vnode->fid.vid, vnode->fid.vnode, vnode->flags,
        key_serial(key));

 rcu_read_lock();
 valid = afs_check_validity(vnode);
 rcu_read_unlock();

 if (test_bit(AFS_VNODE_DELETED, &vnode->flags))
  clear_nlink(&vnode->vfs_inode);

 if (valid)
  goto valid;

 down_write(&vnode->validate_lock);





 if (!test_bit(AFS_VNODE_CB_PROMISED, &vnode->flags)) {
  _debug("not promised");
  ret = afs_fetch_status(vnode, key, 0, ((void*)0));
  if (ret < 0) {
   if (ret == -ENOENT) {
    set_bit(AFS_VNODE_DELETED, &vnode->flags);
    ret = -ESTALE;
   }
   goto error_unlock;
  }
  _debug("new promise [fl=%lx]", vnode->flags);
 }

 if (test_bit(AFS_VNODE_DELETED, &vnode->flags)) {
  _debug("file already deleted");
  ret = -ESTALE;
  goto error_unlock;
 }



 if (test_and_clear_bit(AFS_VNODE_ZAP_DATA, &vnode->flags))
  afs_zap_data(vnode);
 up_write(&vnode->validate_lock);
valid:
 _leave(" = 0");
 return 0;

error_unlock:
 up_write(&vnode->validate_lock);
 _leave(" = %d", ret);
 return ret;
}
