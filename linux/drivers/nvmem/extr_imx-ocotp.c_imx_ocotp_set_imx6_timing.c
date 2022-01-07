
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct ocotp_priv {scalar_t__ base; int clk; } ;


 unsigned long DIV_ROUND_CLOSEST (unsigned long,int) ;
 int DIV_ROUND_UP (unsigned long,int) ;
 scalar_t__ IMX_OCOTP_ADDR_TIMING ;
 unsigned long TIMING_RELAX_NS ;
 unsigned long TIMING_STROBE_PROG_US ;
 unsigned long TIMING_STROBE_READ_NS ;
 unsigned long clk_get_rate (int ) ;
 int readl (scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void imx_ocotp_set_imx6_timing(struct ocotp_priv *priv)
{
 unsigned long clk_rate = 0;
 unsigned long strobe_read, relax, strobe_prog;
 u32 timing = 0;
 clk_rate = clk_get_rate(priv->clk);

 relax = DIV_ROUND_UP(clk_rate * TIMING_RELAX_NS, 1000000000) - 1;
 strobe_read = DIV_ROUND_UP(clk_rate * TIMING_STROBE_READ_NS,
       1000000000);
 strobe_read += 2 * (relax + 1) - 1;
 strobe_prog = DIV_ROUND_CLOSEST(clk_rate * TIMING_STROBE_PROG_US,
     1000000);
 strobe_prog += 2 * (relax + 1) - 1;

 timing = readl(priv->base + IMX_OCOTP_ADDR_TIMING) & 0x0FC00000;
 timing |= strobe_prog & 0x00000FFF;
 timing |= (relax << 12) & 0x0000F000;
 timing |= (strobe_read << 16) & 0x003F0000;

 writel(timing, priv->base + IMX_OCOTP_ADDR_TIMING);
}
