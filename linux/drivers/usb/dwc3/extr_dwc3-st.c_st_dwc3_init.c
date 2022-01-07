
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct st_dwc3 {int glue_base; } ;


 int AUX_CLK_EN ;
 int CLKRST_CTRL ;
 int EXT_CFG_RESET_N ;
 int SEL_OVERRIDE_BVALID (int ) ;
 int SEL_OVERRIDE_POWERPRESENT (int ) ;
 int SEL_OVERRIDE_VBUSVALID (int ) ;
 int SW_PIPEW_RESET_N ;
 int USB2_VBUS_MNGMNT_SEL1 ;
 int USB2_VBUS_UTMIOTG ;
 int XHCI_REVISION ;
 int st_dwc3_readl (int ,int ) ;
 int st_dwc3_writel (int ,int ,int) ;

__attribute__((used)) static void st_dwc3_init(struct st_dwc3 *dwc3_data)
{
 u32 reg = st_dwc3_readl(dwc3_data->glue_base, CLKRST_CTRL);

 reg |= AUX_CLK_EN | EXT_CFG_RESET_N | XHCI_REVISION;
 reg &= ~SW_PIPEW_RESET_N;
 st_dwc3_writel(dwc3_data->glue_base, CLKRST_CTRL, reg);


 reg = st_dwc3_readl(dwc3_data->glue_base, USB2_VBUS_MNGMNT_SEL1);

 reg |= SEL_OVERRIDE_VBUSVALID(USB2_VBUS_UTMIOTG) |
  SEL_OVERRIDE_POWERPRESENT(USB2_VBUS_UTMIOTG) |
  SEL_OVERRIDE_BVALID(USB2_VBUS_UTMIOTG);

 st_dwc3_writel(dwc3_data->glue_base, USB2_VBUS_MNGMNT_SEL1, reg);

 reg = st_dwc3_readl(dwc3_data->glue_base, CLKRST_CTRL);
 reg |= SW_PIPEW_RESET_N;
 st_dwc3_writel(dwc3_data->glue_base, CLKRST_CTRL, reg);
}
