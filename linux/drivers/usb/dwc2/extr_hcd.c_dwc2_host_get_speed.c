
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {TYPE_1__* dev; } ;
struct dwc2_hsotg {int dummy; } ;
struct TYPE_2__ {int speed; } ;



int dwc2_host_get_speed(struct dwc2_hsotg *hsotg, void *context)
{
 struct urb *urb = context;

 return urb->dev->speed;
}
