
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct urb {TYPE_3__* dev; } ;
struct dwc2_hsotg {int dummy; } ;
struct TYPE_6__ {int ttport; TYPE_2__* tt; } ;
struct TYPE_5__ {TYPE_1__* hub; } ;
struct TYPE_4__ {int devnum; } ;



__attribute__((used)) static void dwc2_host_hub_info(struct dwc2_hsotg *hsotg, void *context,
          int *hub_addr, int *hub_port)
{
 struct urb *urb = context;

 if (urb->dev->tt)
  *hub_addr = urb->dev->tt->hub->devnum;
 else
  *hub_addr = 0;
 *hub_port = urb->dev->ttport;
}
