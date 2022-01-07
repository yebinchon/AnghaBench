
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_usb {int usb_mode; int dev; } ;


 int POWER_CTRL ;
 int POWER_CTRL_OTG_ENAB ;

 int ULPI_FUNC_CTRL ;
 int ULPI_FUNC_CTRL_OPMODE_MASK ;
 int ULPI_FUNC_CTRL_XCVRSEL_MASK ;
 int ULPI_IFC_CTRL ;
 int ULPI_IFC_CTRL_CARKITMODE ;
 int dev_err (int ,char*,int) ;
 int twl4030_usb_clear_bits (struct twl4030_usb*,int ,int) ;
 int twl4030_usb_set_bits (struct twl4030_usb*,int ,int ) ;

__attribute__((used)) static void twl4030_usb_set_mode(struct twl4030_usb *twl, int mode)
{
 twl->usb_mode = mode;

 switch (mode) {
 case 128:
  twl4030_usb_clear_bits(twl, ULPI_IFC_CTRL,
     ULPI_IFC_CTRL_CARKITMODE);
  twl4030_usb_set_bits(twl, POWER_CTRL, POWER_CTRL_OTG_ENAB);
  twl4030_usb_clear_bits(twl, ULPI_FUNC_CTRL,
     ULPI_FUNC_CTRL_XCVRSEL_MASK |
     ULPI_FUNC_CTRL_OPMODE_MASK);
  break;
 case -1:

  break;
 default:
  dev_err(twl->dev, "unsupported T2 transceiver mode %d\n",
    mode);
  break;
 }
}
