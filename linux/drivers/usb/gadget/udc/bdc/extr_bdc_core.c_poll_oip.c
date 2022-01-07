
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bdc {int dev; int regs; } ;


 int BDC_BDCSC ;
 scalar_t__ BDC_CSTS (int ) ;
 scalar_t__ BDC_OIP ;
 int ETIMEDOUT ;
 int bdc_readl (int ,int ) ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int dev_err (int ,char*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int poll_oip(struct bdc *bdc, int usec)
{
 u32 status;

 while (usec) {
  status = bdc_readl(bdc->regs, BDC_BDCSC);
  if (BDC_CSTS(status) != BDC_OIP) {
   dev_dbg(bdc->dev,
    "poll_oip complete status=%d",
    BDC_CSTS(status));
   return 0;
  }
  udelay(10);
  usec -= 10;
 }
 dev_err(bdc->dev, "Err: operation timedout BDCSC: 0x%08x\n", status);

 return -ETIMEDOUT;
}
