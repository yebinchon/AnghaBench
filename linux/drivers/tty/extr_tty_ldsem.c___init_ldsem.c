
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_class_key {int dummy; } ;
struct ld_semaphore {int write_wait; int read_wait; int wait_lock; scalar_t__ wait_readers; int count; int dep_map; } ;


 int INIT_LIST_HEAD (int *) ;
 int LDSEM_UNLOCKED ;
 int atomic_long_set (int *,int ) ;
 int debug_check_no_locks_freed (void*,int) ;
 int lockdep_init_map (int *,char const*,struct lock_class_key*,int ) ;
 int raw_spin_lock_init (int *) ;

void __init_ldsem(struct ld_semaphore *sem, const char *name,
    struct lock_class_key *key)
{







 atomic_long_set(&sem->count, LDSEM_UNLOCKED);
 sem->wait_readers = 0;
 raw_spin_lock_init(&sem->wait_lock);
 INIT_LIST_HEAD(&sem->read_wait);
 INIT_LIST_HEAD(&sem->write_wait);
}
