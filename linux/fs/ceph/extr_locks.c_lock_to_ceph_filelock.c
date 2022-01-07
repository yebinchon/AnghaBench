
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct file_lock {int fl_type; int fl_owner; scalar_t__ fl_pid; scalar_t__ fl_start; scalar_t__ fl_end; } ;
struct ceph_filelock {int type; void* owner; void* pid; void* client; void* length; void* start; } ;


 int CEPH_LOCK_EXCL ;
 int CEPH_LOCK_SHARED ;
 int CEPH_LOCK_UNLOCK ;
 int EINVAL ;



 void* cpu_to_le64 (scalar_t__) ;
 int dout (char*,int) ;
 scalar_t__ secure_addr (int ) ;

__attribute__((used)) static int lock_to_ceph_filelock(struct file_lock *lock,
     struct ceph_filelock *cephlock)
{
 int err = 0;
 cephlock->start = cpu_to_le64(lock->fl_start);
 cephlock->length = cpu_to_le64(lock->fl_end - lock->fl_start + 1);
 cephlock->client = cpu_to_le64(0);
 cephlock->pid = cpu_to_le64((u64)lock->fl_pid);
 cephlock->owner = cpu_to_le64(secure_addr(lock->fl_owner));

 switch (lock->fl_type) {
 case 130:
  cephlock->type = CEPH_LOCK_SHARED;
  break;
 case 128:
  cephlock->type = CEPH_LOCK_EXCL;
  break;
 case 129:
  cephlock->type = CEPH_LOCK_UNLOCK;
  break;
 default:
  dout("Have unknown lock type %d\n", lock->fl_type);
  err = -EINVAL;
 }

 return err;
}
