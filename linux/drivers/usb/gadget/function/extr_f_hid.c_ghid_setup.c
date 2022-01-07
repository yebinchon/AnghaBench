
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
typedef int dev_t ;


 scalar_t__ IS_ERR (int *) ;
 int MAJOR (int ) ;
 int PTR_ERR (int *) ;
 int THIS_MODULE ;
 int alloc_chrdev_region (int *,int ,int,char*) ;
 int * class_create (int ,char*) ;
 int class_destroy (int *) ;
 int * hidg_class ;
 int major ;
 int minors ;

int ghid_setup(struct usb_gadget *g, int count)
{
 int status;
 dev_t dev;

 hidg_class = class_create(THIS_MODULE, "hidg");
 if (IS_ERR(hidg_class)) {
  status = PTR_ERR(hidg_class);
  hidg_class = ((void*)0);
  return status;
 }

 status = alloc_chrdev_region(&dev, 0, count, "hidg");
 if (status) {
  class_destroy(hidg_class);
  hidg_class = ((void*)0);
  return status;
 }

 major = MAJOR(dev);
 minors = count;

 return 0;
}
