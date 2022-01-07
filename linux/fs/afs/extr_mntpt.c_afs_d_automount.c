
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct path {int dentry; } ;


 int HZ ;
 scalar_t__ IS_ERR (struct vfsmount*) ;
 int _enter (char*,int ) ;
 int _leave (char*,struct vfsmount*) ;
 struct vfsmount* afs_mntpt_do_automount (int ) ;
 int afs_mntpt_expiry_timeout ;
 int afs_mntpt_expiry_timer ;
 int afs_vfsmounts ;
 int afs_wq ;
 int mnt_set_expiry (struct vfsmount*,int *) ;
 int mntget (struct vfsmount*) ;
 int queue_delayed_work (int ,int *,int) ;

struct vfsmount *afs_d_automount(struct path *path)
{
 struct vfsmount *newmnt;

 _enter("{%pd}", path->dentry);

 newmnt = afs_mntpt_do_automount(path->dentry);
 if (IS_ERR(newmnt))
  return newmnt;

 mntget(newmnt);
 mnt_set_expiry(newmnt, &afs_vfsmounts);
 queue_delayed_work(afs_wq, &afs_mntpt_expiry_timer,
      afs_mntpt_expiry_timeout * HZ);
 _leave(" = %p", newmnt);
 return newmnt;
}
