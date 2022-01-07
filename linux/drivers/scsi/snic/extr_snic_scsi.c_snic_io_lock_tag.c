
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic {int * io_req_lock; } ;
typedef int spinlock_t ;


 int SNIC_IO_LOCKS ;

__attribute__((used)) static inline spinlock_t *
snic_io_lock_tag(struct snic *snic, int tag)
{
 return &snic->io_req_lock[tag & (SNIC_IO_LOCKS - 1)];
}
