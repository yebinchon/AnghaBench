
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct usb_configuration {int dummy; } ;
struct f_hidg {int cdev; int minor; } ;


 int MKDEV (int ,int ) ;
 int cdev_del (int *) ;
 int device_destroy (int ,int ) ;
 struct f_hidg* func_to_hidg (struct usb_function*) ;
 int hidg_class ;
 int major ;
 int usb_free_all_descriptors (struct usb_function*) ;

__attribute__((used)) static void hidg_unbind(struct usb_configuration *c, struct usb_function *f)
{
 struct f_hidg *hidg = func_to_hidg(f);

 device_destroy(hidg_class, MKDEV(major, hidg->minor));
 cdev_del(&hidg->cdev);

 usb_free_all_descriptors(f);
}
