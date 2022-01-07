
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ffs_function {TYPE_1__* ffs; struct ffs_ep* eps; } ;
struct ffs_epfile {int * ep; } ;
struct ffs_ep {int ep; } ;
struct TYPE_2__ {unsigned int eps_count; int eps_lock; struct ffs_epfile* epfiles; } ;


 int __ffs_epfile_read_buffer_free (struct ffs_epfile*) ;
 scalar_t__ likely (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_ep_disable (int ) ;

__attribute__((used)) static void ffs_func_eps_disable(struct ffs_function *func)
{
 struct ffs_ep *ep = func->eps;
 struct ffs_epfile *epfile = func->ffs->epfiles;
 unsigned count = func->ffs->eps_count;
 unsigned long flags;

 spin_lock_irqsave(&func->ffs->eps_lock, flags);
 while (count--) {

  if (likely(ep->ep))
   usb_ep_disable(ep->ep);
  ++ep;

  if (epfile) {
   epfile->ep = ((void*)0);
   __ffs_epfile_read_buffer_free(epfile);
   ++epfile;
  }
 }
 spin_unlock_irqrestore(&func->ffs->eps_lock, flags);
}
