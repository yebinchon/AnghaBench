
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 scalar_t__ IS_ERR (int *) ;
 int MAJOR (int ) ;
 int PTR_ERR (int *) ;
 int THIS_MODULE ;
 int alloc_chrdev_region (int *,int ,int,char*) ;
 int * class_create (int ,char*) ;
 int class_destroy (int *) ;
 int major ;
 int minors ;
 int pr_err (char*,int) ;
 int * usb_gadget_class ;

__attribute__((used)) static int gprinter_setup(int count)
{
 int status;
 dev_t devt;

 usb_gadget_class = class_create(THIS_MODULE, "usb_printer_gadget");
 if (IS_ERR(usb_gadget_class)) {
  status = PTR_ERR(usb_gadget_class);
  usb_gadget_class = ((void*)0);
  pr_err("unable to create usb_gadget class %d\n", status);
  return status;
 }

 status = alloc_chrdev_region(&devt, 0, count, "USB printer gadget");
 if (status) {
  pr_err("alloc_chrdev_region %d\n", status);
  class_destroy(usb_gadget_class);
  usb_gadget_class = ((void*)0);
  return status;
 }

 major = MAJOR(devt);
 minors = count;

 return status;
}
