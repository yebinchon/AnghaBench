
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnic {int * io_req_lock; } ;
typedef int spinlock_t ;


 int FNIC_IO_LOCKS ;

__attribute__((used)) static inline spinlock_t *fnic_io_lock_tag(struct fnic *fnic,
         int tag)
{
 return &fnic->io_req_lock[tag & (FNIC_IO_LOCKS - 1)];
}
