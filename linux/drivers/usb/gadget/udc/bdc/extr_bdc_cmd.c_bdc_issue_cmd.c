
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bdc {int dev; int regs; } ;


 int BDC_CMDPAR0 ;
 int BDC_CMDPAR1 ;
 int BDC_CMDPAR2 ;
 int BDC_CMDSC ;
 scalar_t__ BDC_CMDS_BUSY ;
 scalar_t__ BDC_CMD_CST (scalar_t__) ;
 scalar_t__ BDC_CMD_CWS ;
 scalar_t__ BDC_CMD_SRD ;
 scalar_t__ BDC_CMD_TIMEOUT ;
 scalar_t__ bdc_readl (int ,int ) ;
 int bdc_writel (int ,int ,scalar_t__) ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int dev_dbg_ratelimited (int ,char*,scalar_t__) ;
 int dev_err (int ,char*,scalar_t__) ;
 int udelay (int) ;
 int wmb () ;

__attribute__((used)) static int bdc_issue_cmd(struct bdc *bdc, u32 cmd_sc, u32 param0,
       u32 param1, u32 param2)
{
 u32 timeout = BDC_CMD_TIMEOUT;
 u32 cmd_status;
 u32 temp;

 bdc_writel(bdc->regs, BDC_CMDPAR0, param0);
 bdc_writel(bdc->regs, BDC_CMDPAR1, param1);
 bdc_writel(bdc->regs, BDC_CMDPAR2, param2);



 wmb();
 bdc_writel(bdc->regs, BDC_CMDSC, cmd_sc | BDC_CMD_CWS | BDC_CMD_SRD);
 do {
  temp = bdc_readl(bdc->regs, BDC_CMDSC);
  dev_dbg_ratelimited(bdc->dev, "cmdsc=%x", temp);
  cmd_status = BDC_CMD_CST(temp);
  if (cmd_status != BDC_CMDS_BUSY) {
   dev_dbg(bdc->dev,
    "command completed cmd_sts:%x\n", cmd_status);
   return cmd_status;
  }
  udelay(1);
 } while (timeout--);

 dev_err(bdc->dev,
  "command operation timedout cmd_status=%d\n", cmd_status);

 return cmd_status;
}
