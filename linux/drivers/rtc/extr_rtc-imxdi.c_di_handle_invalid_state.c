
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct imxdi_dev {scalar_t__ ioaddr; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ DCR ;
 int DCR_TCE ;
 int DCR_TCHL ;
 int DCR_TCSL ;
 int DCR_TDCSL ;
 scalar_t__ DSR ;
 int DSR_NVF ;
 int DSR_TCO ;
 scalar_t__ DTCMR ;
 scalar_t__ DTCR ;
 int ENODEV ;
 int __raw_readl (scalar_t__) ;
 int dev_warn (int *,char*,int) ;
 int di_handle_valid_state (struct imxdi_dev*,int ) ;
 int di_what_is_to_be_done (struct imxdi_dev*,char*) ;
 int di_write_busy_wait (struct imxdi_dev*,int,scalar_t__) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int di_handle_invalid_state(struct imxdi_dev *imxdi, u32 dsr)
{
 u32 dcr, sec;





 di_write_busy_wait(imxdi, 0x00000000, DTCR);

 di_write_busy_wait(imxdi, DCR_TDCSL, DCR);

 sec = readl(imxdi->ioaddr + DTCMR);
 if (sec != 0)
  dev_warn(&imxdi->pdev->dev,
    "The security violation has happened at %u seconds\n",
    sec);




 dcr = readl(imxdi->ioaddr + DCR);
 if (!(dcr & DCR_TCE)) {
  if (dcr & DCR_TCHL) {

   di_what_is_to_be_done(imxdi, "battery");
   return -ENODEV;
  }
  if (dcr & DCR_TCSL) {
   di_what_is_to_be_done(imxdi, "main");
   return -ENODEV;
  }
 }
 di_write_busy_wait(imxdi, DSR_NVF, DSR);

 di_write_busy_wait(imxdi, DSR_TCO, DSR);

 di_write_busy_wait(imxdi, dcr | DCR_TCE, DCR);

 di_write_busy_wait(imxdi, sec, DTCMR);


 return di_handle_valid_state(imxdi, __raw_readl(imxdi->ioaddr + DSR));
}
