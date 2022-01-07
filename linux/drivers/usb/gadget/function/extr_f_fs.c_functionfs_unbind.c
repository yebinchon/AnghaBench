
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ffs_data {int flags; TYPE_1__* gadget; int * ep0req; } ;
struct TYPE_2__ {int ep0; } ;


 int ENTER () ;
 int FFS_FL_BOUND ;
 int WARN_ON (int) ;
 int clear_bit (int ,int *) ;
 int ffs_data_put (struct ffs_data*) ;
 int usb_ep_free_request (int ,int *) ;

__attribute__((used)) static void functionfs_unbind(struct ffs_data *ffs)
{
 ENTER();

 if (!WARN_ON(!ffs->gadget)) {
  usb_ep_free_request(ffs->gadget->ep0, ffs->ep0req);
  ffs->ep0req = ((void*)0);
  ffs->gadget = ((void*)0);
  clear_bit(FFS_FL_BOUND, &ffs->flags);
  ffs_data_put(ffs);
 }
}
