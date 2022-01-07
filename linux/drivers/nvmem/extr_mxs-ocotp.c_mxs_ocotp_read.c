
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxs_ocotp {int clk; scalar_t__ base; } ;


 int BM_OCOTP_CTRL_ERROR ;
 int BM_OCOTP_CTRL_RD_BANK_OPEN ;
 unsigned int OCOTP_DATA_OFFSET ;
 scalar_t__ STMP_OFFSET_REG_CLR ;
 scalar_t__ STMP_OFFSET_REG_SET ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int mxs_ocotp_wait (struct mxs_ocotp*) ;
 scalar_t__ readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int mxs_ocotp_read(void *context, unsigned int offset,
     void *val, size_t bytes)
{
 struct mxs_ocotp *otp = context;
 u32 *buf = val;
 int ret;

 ret = clk_enable(otp->clk);
 if (ret)
  return ret;

 writel(BM_OCOTP_CTRL_ERROR, otp->base + STMP_OFFSET_REG_CLR);

 ret = mxs_ocotp_wait(otp);
 if (ret)
  goto disable_clk;


 writel(BM_OCOTP_CTRL_RD_BANK_OPEN, otp->base + STMP_OFFSET_REG_SET);


 udelay(1);

 ret = mxs_ocotp_wait(otp);
 if (ret)
  goto close_banks;

 while (bytes) {
  if ((offset < OCOTP_DATA_OFFSET) || (offset % 16)) {

   *buf++ = 0;
  } else {
   *buf++ = readl(otp->base + offset);
  }

  bytes -= 4;
  offset += 4;
 }

close_banks:

 writel(BM_OCOTP_CTRL_RD_BANK_OPEN, otp->base + STMP_OFFSET_REG_CLR);

disable_clk:
 clk_disable(otp->clk);

 return ret;
}
