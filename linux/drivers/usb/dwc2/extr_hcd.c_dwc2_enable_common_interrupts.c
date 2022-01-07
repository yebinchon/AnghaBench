
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ lpm; int external_id_pin_ctl; int host_dma; } ;
struct dwc2_hsotg {TYPE_1__ params; } ;


 int GINTMSK ;
 int GINTSTS ;
 int GINTSTS_CONIDSTSCHNG ;
 int GINTSTS_LPMTRANRCVD ;
 int GINTSTS_MODEMIS ;
 int GINTSTS_OTGINT ;
 int GINTSTS_RXFLVL ;
 int GINTSTS_SESSREQINT ;
 int GINTSTS_USBSUSP ;
 int GINTSTS_WKUPINT ;
 int GOTGINT ;
 scalar_t__ dwc2_is_device_mode (struct dwc2_hsotg*) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;

__attribute__((used)) static void dwc2_enable_common_interrupts(struct dwc2_hsotg *hsotg)
{
 u32 intmsk;


 dwc2_writel(hsotg, 0xffffffff, GOTGINT);


 dwc2_writel(hsotg, 0xffffffff, GINTSTS);


 intmsk = GINTSTS_MODEMIS | GINTSTS_OTGINT;

 if (!hsotg->params.host_dma)
  intmsk |= GINTSTS_RXFLVL;
 if (!hsotg->params.external_id_pin_ctl)
  intmsk |= GINTSTS_CONIDSTSCHNG;

 intmsk |= GINTSTS_WKUPINT | GINTSTS_USBSUSP |
    GINTSTS_SESSREQINT;

 if (dwc2_is_device_mode(hsotg) && hsotg->params.lpm)
  intmsk |= GINTSTS_LPMTRANRCVD;

 dwc2_writel(hsotg, intmsk, GINTMSK);
}
