
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;
struct dentry {TYPE_1__ d_lockref; } ;
struct ceph_lease_walk_control {int expire_dir_lease; scalar_t__ dir_lease_ttl; } ;
struct ceph_dentry_info {int flags; scalar_t__ lease_shared_gen; scalar_t__ time; } ;


 int CEPH_DENTRY_REFERENCED ;
 int DELETE ;
 int EBUSY ;
 int KEEP ;
 int STOP ;
 int TOUCH ;
 int __dir_lease_try_check (struct dentry*) ;
 struct ceph_dentry_info* ceph_dentry (struct dentry*) ;
 int jiffies ;
 scalar_t__ time_before (int ,scalar_t__) ;

__attribute__((used)) static int __dir_lease_check(struct dentry *dentry, void *arg)
{
 struct ceph_lease_walk_control *lwc = arg;
 struct ceph_dentry_info *di = ceph_dentry(dentry);

 int ret = __dir_lease_try_check(dentry);
 if (ret == -EBUSY)
  return KEEP;
 if (ret > 0) {
  if (time_before(jiffies, di->time + lwc->dir_lease_ttl))
   return STOP;



  if (!lwc->expire_dir_lease)
   return TOUCH;
  if (dentry->d_lockref.count > 0 ||
      (di->flags & CEPH_DENTRY_REFERENCED))
   return TOUCH;

  di->lease_shared_gen = 0;
 }
 return DELETE;
}
