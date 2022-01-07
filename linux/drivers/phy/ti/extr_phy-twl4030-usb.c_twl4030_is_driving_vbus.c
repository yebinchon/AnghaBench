
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_usb {int dummy; } ;


 int PHY_CLK_CTRL_STS ;
 int PHY_DPLL_CLK ;
 int ULPI_OTG_CHRGVBUS ;
 int ULPI_OTG_CTRL ;
 int ULPI_OTG_DRVVBUS ;
 int twl4030_usb_read (struct twl4030_usb*,int ) ;

__attribute__((used)) static bool twl4030_is_driving_vbus(struct twl4030_usb *twl)
{
 int ret;

 ret = twl4030_usb_read(twl, PHY_CLK_CTRL_STS);
 if (ret < 0 || !(ret & PHY_DPLL_CLK))




  return 0;

 ret = twl4030_usb_read(twl, ULPI_OTG_CTRL);
 if (ret < 0)
  return 0;

 return (ret & (ULPI_OTG_DRVVBUS | ULPI_OTG_CHRGVBUS)) ? 1 : 0;
}
