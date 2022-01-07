
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {TYPE_2__* gadget; } ;
struct f_obex {int port; int port_num; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct usb_composite_dev* cdev; } ;


 int dev_dbg (int *,char*,int ) ;
 struct f_obex* func_to_obex (struct usb_function*) ;
 int gserial_disconnect (int *) ;

__attribute__((used)) static void obex_disable(struct usb_function *f)
{
 struct f_obex *obex = func_to_obex(f);
 struct usb_composite_dev *cdev = f->config->cdev;

 dev_dbg(&cdev->gadget->dev, "obex ttyGS%d disable\n", obex->port_num);
 gserial_disconnect(&obex->port);
}
