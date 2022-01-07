
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int dummy; } ;
struct TYPE_8__ {TYPE_2__* in_ep; } ;
struct f_ncm {int timer_stopping; TYPE_3__* notify; TYPE_4__ port; int * netdev; } ;
struct TYPE_7__ {int * desc; scalar_t__ enabled; } ;
struct TYPE_6__ {scalar_t__ enabled; } ;
struct TYPE_5__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*) ;
 struct f_ncm* func_to_ncm (struct usb_function*) ;
 int gether_disconnect (TYPE_4__*) ;
 int usb_ep_disable (TYPE_3__*) ;

__attribute__((used)) static void ncm_disable(struct usb_function *f)
{
 struct f_ncm *ncm = func_to_ncm(f);
 struct usb_composite_dev *cdev = f->config->cdev;

 DBG(cdev, "ncm deactivated\n");

 if (ncm->port.in_ep->enabled) {
  ncm->timer_stopping = 1;
  ncm->netdev = ((void*)0);
  gether_disconnect(&ncm->port);
 }

 if (ncm->notify->enabled) {
  usb_ep_disable(ncm->notify);
  ncm->notify->desc = ((void*)0);
 }
}
