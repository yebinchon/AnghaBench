
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kiocb {TYPE_1__* ki_filp; struct ffs_io_data* private; } ;
struct ffs_io_data {scalar_t__ req; scalar_t__ ep; } ;
struct ffs_epfile {TYPE_2__* ffs; } ;
struct TYPE_4__ {int eps_lock; } ;
struct TYPE_3__ {struct ffs_epfile* private_data; } ;


 int EINVAL ;
 int ENTER () ;
 scalar_t__ likely (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usb_ep_dequeue (scalar_t__,scalar_t__) ;

__attribute__((used)) static int ffs_aio_cancel(struct kiocb *kiocb)
{
 struct ffs_io_data *io_data = kiocb->private;
 struct ffs_epfile *epfile = kiocb->ki_filp->private_data;
 int value;

 ENTER();

 spin_lock_irq(&epfile->ffs->eps_lock);

 if (likely(io_data && io_data->ep && io_data->req))
  value = usb_ep_dequeue(io_data->ep, io_data->req);
 else
  value = -EINVAL;

 spin_unlock_irq(&epfile->ffs->eps_lock);

 return value;
}
