
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct pcf50633_mbc {int usb; TYPE_2__* pcf; } ;
struct pcf50633 {int dev; int mbc_pdev; } ;
struct TYPE_5__ {TYPE_1__* pdata; } ;
struct TYPE_4__ {int charger_reference_current_ma; } ;


 int PCF50633_MBCC1_CHGENA ;
 int PCF50633_MBCC7_USB_1000mA ;
 int PCF50633_MBCC7_USB_100mA ;
 int PCF50633_MBCC7_USB_500mA ;
 int PCF50633_MBCC7_USB_MASK ;
 int PCF50633_MBCC7_USB_SUSPEND ;
 int PCF50633_MBCS2_MBC_BAT_FULL ;
 int PCF50633_MBCS2_MBC_MASK ;
 int PCF50633_REG_MBCC1 ;
 int PCF50633_REG_MBCC5 ;
 int PCF50633_REG_MBCC7 ;
 int PCF50633_REG_MBCS2 ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,int) ;
 int pcf50633_reg_clear_bits (struct pcf50633*,int ,int) ;
 int pcf50633_reg_read (TYPE_2__*,int ) ;
 int pcf50633_reg_set_bit_mask (struct pcf50633*,int ,int,int) ;
 int pcf50633_reg_write (TYPE_2__*,int ,unsigned int) ;
 struct pcf50633_mbc* platform_get_drvdata (int ) ;
 int power_supply_changed (int ) ;

int pcf50633_mbc_usb_curlim_set(struct pcf50633 *pcf, int ma)
{
 struct pcf50633_mbc *mbc = platform_get_drvdata(pcf->mbc_pdev);
 int ret = 0;
 u8 bits;
 u8 mbcs2, chgmod;
 unsigned int mbcc5;

 if (ma >= 1000) {
  bits = PCF50633_MBCC7_USB_1000mA;
  ma = 1000;
 } else if (ma >= 500) {
  bits = PCF50633_MBCC7_USB_500mA;
  ma = 500;
 } else if (ma >= 100) {
  bits = PCF50633_MBCC7_USB_100mA;
  ma = 100;
 } else {
  bits = PCF50633_MBCC7_USB_SUSPEND;
  ma = 0;
 }

 ret = pcf50633_reg_set_bit_mask(pcf, PCF50633_REG_MBCC7,
     PCF50633_MBCC7_USB_MASK, bits);
 if (ret)
  dev_err(pcf->dev, "error setting usb curlim to %d mA\n", ma);
 else
  dev_info(pcf->dev, "usb curlim to %d mA\n", ma);
 if (mbc->pcf->pdata->charger_reference_current_ma) {
  mbcc5 = (ma << 8) / mbc->pcf->pdata->charger_reference_current_ma;
  if (mbcc5 > 255)
   mbcc5 = 255;
  pcf50633_reg_write(mbc->pcf, PCF50633_REG_MBCC5, mbcc5);
 }

 mbcs2 = pcf50633_reg_read(mbc->pcf, PCF50633_REG_MBCS2);
 chgmod = (mbcs2 & PCF50633_MBCS2_MBC_MASK);





 if (chgmod != PCF50633_MBCS2_MBC_BAT_FULL)
  pcf50633_reg_set_bit_mask(pcf, PCF50633_REG_MBCC1,
    PCF50633_MBCC1_CHGENA, PCF50633_MBCC1_CHGENA);
 else {
  pcf50633_reg_clear_bits(pcf, PCF50633_REG_MBCC1,
    PCF50633_MBCC1_CHGENA);
  pcf50633_reg_set_bit_mask(pcf, PCF50633_REG_MBCC1,
    PCF50633_MBCC1_CHGENA, PCF50633_MBCC1_CHGENA);
 }

 power_supply_changed(mbc->usb);

 return ret;
}
