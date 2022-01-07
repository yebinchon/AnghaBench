
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct imxdi_dev {TYPE_1__* pdev; scalar_t__ ioaddr; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ DCR ;
 int DCR_TDCHL ;
 int DCR_TDCSL ;
 scalar_t__ DSR ;
 int DSR_CTD ;
 int DSR_EBD ;
 int DSR_ETAD ;
 int DSR_ETBD ;
 int DSR_MCO ;
 int DSR_NVF ;
 int DSR_SAD ;
 int DSR_SVF ;
 int DSR_TCO ;
 int DSR_TTD ;
 int DSR_VTD ;
 int DSR_WBF ;
 int DSR_WCF ;
 int DSR_WEF ;
 int DSR_WNF ;
 int DSR_WTD ;
 scalar_t__ DTCR ;
 int ENODEV ;
 int __raw_readl (scalar_t__) ;
 int dev_crit (int *,char*) ;
 int dev_warn (int *,char*,int) ;
 int di_handle_invalid_state (struct imxdi_dev*,int) ;
 int di_what_is_to_be_done (struct imxdi_dev*,char*) ;
 int di_write_busy_wait (struct imxdi_dev*,int,scalar_t__) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int di_handle_invalid_and_failure_state(struct imxdi_dev *imxdi, u32 dsr)
{
 u32 dcr;






 if (dsr & (DSR_WTD | DSR_ETBD | DSR_ETAD | DSR_EBD | DSR_SAD |
   DSR_TTD | DSR_CTD | DSR_VTD | DSR_MCO | DSR_TCO)) {
  dcr = __raw_readl(imxdi->ioaddr + DCR);
  if (dcr & DCR_TDCHL) {
   di_what_is_to_be_done(imxdi, "battery");
   return -ENODEV;
  }
  if (dcr & DCR_TDCSL) {

   di_what_is_to_be_done(imxdi, "main");
   return -ENODEV;
  }
 }


 di_write_busy_wait(imxdi, 0x00000000, DTCR);


 di_write_busy_wait(imxdi, dsr & (DSR_WTD | DSR_ETBD | DSR_ETAD |
   DSR_EBD | DSR_SAD | DSR_TTD | DSR_CTD | DSR_VTD |
   DSR_MCO | DSR_TCO), DSR);

 dsr = readl(imxdi->ioaddr + DSR);
 if ((dsr & ~(DSR_NVF | DSR_SVF | DSR_WBF | DSR_WNF |
   DSR_WCF | DSR_WEF)) != 0)
  dev_warn(&imxdi->pdev->dev,
    "There are still some sources of pain in DSR: %08x!\n",
    dsr & ~(DSR_NVF | DSR_SVF | DSR_WBF | DSR_WNF |
     DSR_WCF | DSR_WEF));





 di_write_busy_wait(imxdi, DSR_SVF, DSR);


 dsr = readl(imxdi->ioaddr + DSR);
 if (dsr & DSR_SVF) {
  dev_crit(&imxdi->pdev->dev,
    "Cannot clear the security violation flag. We are ending up in an endless loop!\n");

  di_what_is_to_be_done(imxdi, "battery");
  return -ENODEV;
 }





 return di_handle_invalid_state(imxdi, dsr);
}
