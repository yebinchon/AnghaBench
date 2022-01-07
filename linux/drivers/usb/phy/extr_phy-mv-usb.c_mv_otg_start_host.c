
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_otg {int host; } ;
struct TYPE_6__ {int controller; } ;
struct usb_hcd {TYPE_3__ self; int irq; } ;
struct TYPE_4__ {struct usb_otg* otg; } ;
struct mv_otg {TYPE_2__* pdev; TYPE_1__ phy; } ;
struct TYPE_5__ {int dev; } ;


 int IRQF_SHARED ;
 struct usb_hcd* bus_to_hcd (int ) ;
 int dev_info (int *,char*,char*) ;
 int device_wakeup_enable (int ) ;
 int usb_add_hcd (struct usb_hcd*,int ,int ) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static void mv_otg_start_host(struct mv_otg *mvotg, int on)
{
}
