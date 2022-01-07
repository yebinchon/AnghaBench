
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MKDEV (scalar_t__,int ) ;
 int class_destroy (int *) ;
 scalar_t__ major ;
 scalar_t__ minors ;
 int unregister_chrdev_region (int ,scalar_t__) ;
 int * usb_gadget_class ;

__attribute__((used)) static void gprinter_cleanup(void)
{
 if (major) {
  unregister_chrdev_region(MKDEV(major, 0), minors);
  major = minors = 0;
 }
 class_destroy(usb_gadget_class);
 usb_gadget_class = ((void*)0);
}
