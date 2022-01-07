
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifsLockInfo {int block_q; int blist; int flags; int pid; int type; void* length; void* offset; } ;
typedef int __u8 ;
typedef void* __u64 ;
typedef int __u16 ;
struct TYPE_2__ {int tgid; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_1__* current ;
 int init_waitqueue_head (int *) ;
 struct cifsLockInfo* kmalloc (int,int ) ;

__attribute__((used)) static struct cifsLockInfo *
cifs_lock_init(__u64 offset, __u64 length, __u8 type, __u16 flags)
{
 struct cifsLockInfo *lock =
  kmalloc(sizeof(struct cifsLockInfo), GFP_KERNEL);
 if (!lock)
  return lock;
 lock->offset = offset;
 lock->length = length;
 lock->type = type;
 lock->pid = current->tgid;
 lock->flags = flags;
 INIT_LIST_HEAD(&lock->blist);
 init_waitqueue_head(&lock->block_q);
 return lock;
}
