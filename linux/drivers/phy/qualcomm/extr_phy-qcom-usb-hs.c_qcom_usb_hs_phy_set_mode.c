
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qcom_usb_hs_phy {int ulpi; int vbus_edev; } ;
struct phy {int dummy; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;


 int EINVAL ;



 int ULPI_CLR (int ) ;
 int ULPI_INT_IDGRD ;
 int ULPI_INT_SESS_VALID ;
 int ULPI_MISC_A ;
 int ULPI_MISC_A_VBUSVLDEXTSEL ;
 int ULPI_PWR_CLK_MNG_REG ;
 int ULPI_PWR_OTG_COMP_DISABLE ;
 int ULPI_SET (int ) ;
 int ULPI_USB_INT_EN_FALL ;
 int ULPI_USB_INT_EN_RISE ;
 struct qcom_usb_hs_phy* phy_get_drvdata (struct phy*) ;
 int ulpi_write (int ,int ,int ) ;

__attribute__((used)) static int qcom_usb_hs_phy_set_mode(struct phy *phy,
        enum phy_mode mode, int submode)
{
 struct qcom_usb_hs_phy *uphy = phy_get_drvdata(phy);
 u8 addr;
 int ret;

 if (!uphy->vbus_edev) {
  u8 val = 0;

  switch (mode) {
  case 128:
  case 129:
   val |= ULPI_INT_IDGRD;

  case 130:
   val |= ULPI_INT_SESS_VALID;
  default:
   break;
  }

  ret = ulpi_write(uphy->ulpi, ULPI_USB_INT_EN_RISE, val);
  if (ret)
   return ret;
  ret = ulpi_write(uphy->ulpi, ULPI_USB_INT_EN_FALL, val);
 } else {
  switch (mode) {
  case 128:
  case 130:
   addr = ULPI_SET(ULPI_MISC_A);
   break;
  case 129:
   addr = ULPI_CLR(ULPI_MISC_A);
   break;
  default:
   return -EINVAL;
  }

  ret = ulpi_write(uphy->ulpi, ULPI_SET(ULPI_PWR_CLK_MNG_REG),
     ULPI_PWR_OTG_COMP_DISABLE);
  if (ret)
   return ret;
  ret = ulpi_write(uphy->ulpi, addr, ULPI_MISC_A_VBUSVLDEXTSEL);
 }

 return ret;
}
