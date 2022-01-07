
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ocotp_priv {scalar_t__ base; int clk; } ;


 int DEF_FSOURCE ;
 int DEF_STROBE_PROG ;
 int DIV_ROUND_CLOSEST_ULL (int,int ) ;
 int DIV_ROUND_UP_ULL (int,int ) ;
 scalar_t__ IMX_OCOTP_ADDR_TIMING ;
 int NSEC_PER_SEC ;
 unsigned long clk_get_rate (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void imx_ocotp_set_imx7_timing(struct ocotp_priv *priv)
{
 unsigned long clk_rate = 0;
 u64 fsource, strobe_prog;
 u32 timing = 0;




 clk_rate = clk_get_rate(priv->clk);
 fsource = DIV_ROUND_UP_ULL((u64)clk_rate * DEF_FSOURCE,
       NSEC_PER_SEC) + 1;
 strobe_prog = DIV_ROUND_CLOSEST_ULL((u64)clk_rate * DEF_STROBE_PROG,
         NSEC_PER_SEC) + 1;

 timing = strobe_prog & 0x00000FFF;
 timing |= (fsource << 12) & 0x000FF000;

 writel(timing, priv->base + IMX_OCOTP_ADDR_TIMING);
}
