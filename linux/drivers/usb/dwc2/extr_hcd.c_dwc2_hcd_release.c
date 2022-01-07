
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {int dummy; } ;


 int dwc2_disable_host_interrupts (struct dwc2_hsotg*) ;
 int dwc2_hcd_free (struct dwc2_hsotg*) ;

__attribute__((used)) static void dwc2_hcd_release(struct dwc2_hsotg *hsotg)
{

 dwc2_disable_host_interrupts(hsotg);

 dwc2_hcd_free(hsotg);
}
