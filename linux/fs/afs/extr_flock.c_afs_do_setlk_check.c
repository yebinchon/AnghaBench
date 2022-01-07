
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct afs_vnode {int dummy; } ;
typedef enum afs_flock_mode { ____Placeholder_afs_flock_mode } afs_flock_mode ;
typedef scalar_t__ afs_lock_type_t ;
typedef int afs_access_t ;


 int AFS_ACE_INSERT ;
 int AFS_ACE_LOCK ;
 int AFS_ACE_WRITE ;
 scalar_t__ AFS_LOCK_READ ;
 int EACCES ;
 int afs_check_permit (struct afs_vnode*,struct key*,int*) ;
 int afs_validate (struct afs_vnode*,struct key*) ;

__attribute__((used)) static int afs_do_setlk_check(struct afs_vnode *vnode, struct key *key,
         enum afs_flock_mode mode, afs_lock_type_t type)
{
 afs_access_t access;
 int ret;




 ret = afs_validate(vnode, key);
 if (ret < 0)
  return ret;




 ret = afs_check_permit(vnode, key, &access);
 if (ret < 0)
  return ret;







 if (type == AFS_LOCK_READ) {
  if (!(access & (AFS_ACE_INSERT | AFS_ACE_WRITE | AFS_ACE_LOCK)))
   return -EACCES;
 } else {
  if (!(access & (AFS_ACE_INSERT | AFS_ACE_WRITE)))
   return -EACCES;
 }

 return 0;
}
