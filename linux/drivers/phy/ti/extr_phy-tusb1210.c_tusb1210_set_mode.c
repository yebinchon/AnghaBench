
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tusb1210 {int ulpi; } ;
struct phy {int dummy; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;




 int ULPI_OTG_CTRL ;
 int ULPI_OTG_CTRL_DM_PULLDOWN ;
 int ULPI_OTG_CTRL_DP_PULLDOWN ;
 int ULPI_OTG_CTRL_DRVVBUS ;
 int ULPI_OTG_CTRL_DRVVBUS_EXT ;
 int ULPI_OTG_CTRL_ID_PULLUP ;
 struct tusb1210* phy_get_drvdata (struct phy*) ;
 int ulpi_read (int ,int ) ;
 int ulpi_write (int ,int ,int) ;

__attribute__((used)) static int tusb1210_set_mode(struct phy *phy, enum phy_mode mode, int submode)
{
 struct tusb1210 *tusb = phy_get_drvdata(phy);
 int ret;

 ret = ulpi_read(tusb->ulpi, ULPI_OTG_CTRL);
 if (ret < 0)
  return ret;

 switch (mode) {
 case 128:
  ret |= (ULPI_OTG_CTRL_DRVVBUS_EXT
   | ULPI_OTG_CTRL_ID_PULLUP
   | ULPI_OTG_CTRL_DP_PULLDOWN
   | ULPI_OTG_CTRL_DM_PULLDOWN);
  ulpi_write(tusb->ulpi, ULPI_OTG_CTRL, ret);
  ret |= ULPI_OTG_CTRL_DRVVBUS;
  break;
 case 129:
  ret &= ~(ULPI_OTG_CTRL_DRVVBUS
    | ULPI_OTG_CTRL_DP_PULLDOWN
    | ULPI_OTG_CTRL_DM_PULLDOWN);
  ulpi_write(tusb->ulpi, ULPI_OTG_CTRL, ret);
  ret &= ~ULPI_OTG_CTRL_DRVVBUS_EXT;
  break;
 default:

  return 0;
 }

 return ulpi_write(tusb->ulpi, ULPI_OTG_CTRL, ret);
}
