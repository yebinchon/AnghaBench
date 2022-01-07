
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct dpaa2_io {int lock_mgmt_cmd; int swp; } ;


 int ENODEV ;
 int qbman_swp_acquire (int ,int ,int *,unsigned int) ;
 struct dpaa2_io* service_select (struct dpaa2_io*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int dpaa2_io_service_acquire(struct dpaa2_io *d,
        u16 bpid,
        u64 *buffers,
        unsigned int num_buffers)
{
 unsigned long irqflags;
 int err;

 d = service_select(d);
 if (!d)
  return -ENODEV;

 spin_lock_irqsave(&d->lock_mgmt_cmd, irqflags);
 err = qbman_swp_acquire(d->swp, bpid, buffers, num_buffers);
 spin_unlock_irqrestore(&d->lock_mgmt_cmd, irqflags);

 return err;
}
