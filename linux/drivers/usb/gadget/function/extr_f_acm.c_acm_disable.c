
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {TYPE_2__* gadget; } ;
struct f_acm {int notify; int port; int port_num; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct usb_composite_dev* cdev; } ;


 int dev_dbg (int *,char*,int ) ;
 struct f_acm* func_to_acm (struct usb_function*) ;
 int gserial_disconnect (int *) ;
 int usb_ep_disable (int ) ;

__attribute__((used)) static void acm_disable(struct usb_function *f)
{
 struct f_acm *acm = func_to_acm(f);
 struct usb_composite_dev *cdev = f->config->cdev;

 dev_dbg(&cdev->gadget->dev, "acm ttyGS%d deactivated\n", acm->port_num);
 gserial_disconnect(&acm->port);
 usb_ep_disable(acm->notify);
}
