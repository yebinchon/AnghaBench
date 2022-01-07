
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int hcd; } ;


 int usb_hcd_resume_root_hub (int ) ;

void musb_host_resume_root_hub(struct musb *musb)
{
 usb_hcd_resume_root_hub(musb->hcd);
}
