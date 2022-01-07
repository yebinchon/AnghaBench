
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isp1704_charger {int dummy; } ;


 int POWER_SUPPLY_TYPE_USB_CDP ;
 int POWER_SUPPLY_TYPE_USB_DCP ;
 int ULPI_CLR (int ) ;
 int ULPI_DEBUG ;
 int ULPI_FUNC_CTRL ;
 int ULPI_FUNC_CTRL_FULL_SPEED ;
 int ULPI_FUNC_CTRL_RESET ;
 int ULPI_FUNC_CTRL_TERMSELECT ;
 int ULPI_FUNC_CTRL_XCVRSEL_MASK ;
 int ULPI_OTG_CTRL ;
 int ULPI_OTG_CTRL_DM_PULLDOWN ;
 int ULPI_OTG_CTRL_DP_PULLDOWN ;
 int ULPI_SET (int ) ;
 int isp1704_read (struct isp1704_charger*,int ) ;
 int isp1704_write (struct isp1704_charger*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static inline int isp1704_charger_type(struct isp1704_charger *isp)
{
 u8 reg;
 u8 func_ctrl;
 u8 otg_ctrl;
 int type = POWER_SUPPLY_TYPE_USB_DCP;

 func_ctrl = isp1704_read(isp, ULPI_FUNC_CTRL);
 otg_ctrl = isp1704_read(isp, ULPI_OTG_CTRL);


 reg = ULPI_OTG_CTRL_DM_PULLDOWN | ULPI_OTG_CTRL_DP_PULLDOWN;
 isp1704_write(isp, ULPI_CLR(ULPI_OTG_CTRL), reg);


 isp1704_write(isp, ULPI_CLR(ULPI_FUNC_CTRL),
   ULPI_FUNC_CTRL_XCVRSEL_MASK);
 isp1704_write(isp, ULPI_SET(ULPI_FUNC_CTRL),
   ULPI_FUNC_CTRL_FULL_SPEED);


 reg = ULPI_FUNC_CTRL_TERMSELECT | ULPI_FUNC_CTRL_RESET;
 isp1704_write(isp, ULPI_SET(ULPI_FUNC_CTRL), reg);
 usleep_range(1000, 2000);

 reg = isp1704_read(isp, ULPI_DEBUG);
 if ((reg & 3) != 3)
  type = POWER_SUPPLY_TYPE_USB_CDP;


 isp1704_write(isp, ULPI_FUNC_CTRL, func_ctrl);
 isp1704_write(isp, ULPI_OTG_CTRL, otg_ctrl);

 return type;
}
