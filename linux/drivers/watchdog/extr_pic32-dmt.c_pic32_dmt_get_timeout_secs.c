
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct pic32_dmt {scalar_t__ regs; int clk; } ;


 scalar_t__ DMTPSCNT_REG ;
 unsigned long clk_get_rate (int ) ;
 unsigned long readl (scalar_t__) ;

__attribute__((used)) static inline u32 pic32_dmt_get_timeout_secs(struct pic32_dmt *dmt)
{
 unsigned long rate;

 rate = clk_get_rate(dmt->clk);
 if (rate)
  return readl(dmt->regs + DMTPSCNT_REG) / rate;

 return 0;
}
