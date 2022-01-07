
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct imxdi_dev {scalar_t__ ioaddr; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ DCR ;
 int DCR_FSHL ;
 int ENODEV ;
 int dev_dbg (int *,char*,int) ;
 int di_report_tamper_info (struct imxdi_dev*,int) ;
 int di_what_is_to_be_done (struct imxdi_dev*,char*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int di_handle_failure_state(struct imxdi_dev *imxdi, u32 dsr)
{
 u32 dcr;

 dev_dbg(&imxdi->pdev->dev, "DSR register reports: %08X\n", dsr);


 di_report_tamper_info(imxdi, dsr);

 dcr = readl(imxdi->ioaddr + DCR);

 if (dcr & DCR_FSHL) {

  di_what_is_to_be_done(imxdi, "battery");
  return -ENODEV;
 }




 di_what_is_to_be_done(imxdi, "main");

 return -ENODEV;
}
