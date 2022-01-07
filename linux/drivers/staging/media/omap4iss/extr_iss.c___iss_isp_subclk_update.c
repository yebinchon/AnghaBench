
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iss_device {int isp_subclk_resources; } ;


 int ISP5_CTRL ;
 int ISP5_CTRL_BL_CLK_ENABLE ;
 int ISP5_CTRL_H3A_CLK_ENABLE ;
 int ISP5_CTRL_IPIPEIF_CLK_ENABLE ;
 int ISP5_CTRL_IPIPE_CLK_ENABLE ;
 int ISP5_CTRL_ISIF_CLK_ENABLE ;
 int ISP5_CTRL_RSZ_CLK_ENABLE ;
 int ISS_ISP5_CLKCTRL_MASK ;
 int OMAP4_ISS_ISP_SUBCLK_H3A ;
 int OMAP4_ISS_ISP_SUBCLK_IPIPE ;
 int OMAP4_ISS_ISP_SUBCLK_IPIPEIF ;
 int OMAP4_ISS_ISP_SUBCLK_ISIF ;
 int OMAP4_ISS_ISP_SUBCLK_RSZ ;
 int OMAP4_ISS_MEM_ISP_SYS1 ;
 int iss_reg_update (struct iss_device*,int ,int ,int ,int) ;

__attribute__((used)) static void __iss_isp_subclk_update(struct iss_device *iss)
{
 u32 clk = 0;

 if (iss->isp_subclk_resources & OMAP4_ISS_ISP_SUBCLK_ISIF)
  clk |= ISP5_CTRL_ISIF_CLK_ENABLE;

 if (iss->isp_subclk_resources & OMAP4_ISS_ISP_SUBCLK_H3A)
  clk |= ISP5_CTRL_H3A_CLK_ENABLE;

 if (iss->isp_subclk_resources & OMAP4_ISS_ISP_SUBCLK_RSZ)
  clk |= ISP5_CTRL_RSZ_CLK_ENABLE;

 if (iss->isp_subclk_resources & OMAP4_ISS_ISP_SUBCLK_IPIPE)
  clk |= ISP5_CTRL_IPIPE_CLK_ENABLE;

 if (iss->isp_subclk_resources & OMAP4_ISS_ISP_SUBCLK_IPIPEIF)
  clk |= ISP5_CTRL_IPIPEIF_CLK_ENABLE;

 if (clk)
  clk |= ISP5_CTRL_BL_CLK_ENABLE;

 iss_reg_update(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL,
         ISS_ISP5_CLKCTRL_MASK, clk);
}
