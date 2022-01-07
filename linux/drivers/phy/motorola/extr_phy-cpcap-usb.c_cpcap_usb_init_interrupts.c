
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct cpcap_phy_ddata {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int * cpcap_phy_irqs ;
 int cpcap_usb_init_irq (struct platform_device*,struct cpcap_phy_ddata*,int ) ;

__attribute__((used)) static int cpcap_usb_init_interrupts(struct platform_device *pdev,
         struct cpcap_phy_ddata *ddata)
{
 int i, error;

 for (i = 0; i < ARRAY_SIZE(cpcap_phy_irqs); i++) {
  error = cpcap_usb_init_irq(pdev, ddata, cpcap_phy_irqs[i]);
  if (error)
   return error;
 }

 return 0;
}
