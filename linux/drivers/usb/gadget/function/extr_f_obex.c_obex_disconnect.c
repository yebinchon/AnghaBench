
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_composite_dev {TYPE_2__* gadget; } ;
struct TYPE_6__ {TYPE_1__* config; } ;
struct gserial {TYPE_3__ func; } ;
struct f_obex {int port_num; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {struct usb_composite_dev* cdev; } ;


 int dev_dbg (int *,char*,int ,int) ;
 struct f_obex* port_to_obex (struct gserial*) ;
 int usb_function_deactivate (TYPE_3__*) ;

__attribute__((used)) static void obex_disconnect(struct gserial *g)
{
 struct f_obex *obex = port_to_obex(g);
 struct usb_composite_dev *cdev = g->func.config->cdev;
 int status;

 status = usb_function_deactivate(&g->func);
 if (status)
  dev_dbg(&cdev->gadget->dev,
   "obex ttyGS%d function deactivate --> %d\n",
   obex->port_num, status);
}
