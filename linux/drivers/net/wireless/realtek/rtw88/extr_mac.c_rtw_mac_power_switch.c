
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtw_pwr_seq_cmd {int dummy; } ;
struct TYPE_2__ {scalar_t__ rpwm_addr; } ;
struct rtw_dev {TYPE_1__ hci; struct rtw_chip_info* chip; } ;
struct rtw_chip_info {struct rtw_pwr_seq_cmd** pwr_off_seq; struct rtw_pwr_seq_cmd** pwr_on_seq; } ;


 int BIT (int ) ;
 int BIT_RPWM_TOGGLE ;
 int EALREADY ;
 int EINVAL ;
 scalar_t__ REG_CR ;
 int REG_MCUFW_CTRL ;
 scalar_t__ REG_SYS_STATUS1 ;
 scalar_t__ RTW_HCI_TYPE_USB ;
 scalar_t__ rtw_hci_type (struct rtw_dev*) ;
 scalar_t__ rtw_pwr_seq_parser (struct rtw_dev*,struct rtw_pwr_seq_cmd**) ;
 int rtw_read16 (struct rtw_dev*,int ) ;
 int rtw_read8 (struct rtw_dev*,scalar_t__) ;
 int rtw_write8 (struct rtw_dev*,scalar_t__,int) ;

__attribute__((used)) static int rtw_mac_power_switch(struct rtw_dev *rtwdev, bool pwr_on)
{
 struct rtw_chip_info *chip = rtwdev->chip;
 struct rtw_pwr_seq_cmd **pwr_seq;
 u8 rpwm;
 bool cur_pwr;

 rpwm = rtw_read8(rtwdev, rtwdev->hci.rpwm_addr);


 if (rtw_read16(rtwdev, REG_MCUFW_CTRL) == 0xC078) {
  rpwm = (rpwm ^ BIT_RPWM_TOGGLE) & BIT_RPWM_TOGGLE;
  rtw_write8(rtwdev, rtwdev->hci.rpwm_addr, rpwm);
 }

 if (rtw_read8(rtwdev, REG_CR) == 0xea)
  cur_pwr = 0;
 else if (rtw_hci_type(rtwdev) == RTW_HCI_TYPE_USB &&
   (rtw_read8(rtwdev, REG_SYS_STATUS1 + 1) & BIT(0)))
  cur_pwr = 0;
 else
  cur_pwr = 1;

 if (pwr_on && cur_pwr)
  return -EALREADY;

 pwr_seq = pwr_on ? chip->pwr_on_seq : chip->pwr_off_seq;
 if (rtw_pwr_seq_parser(rtwdev, pwr_seq))
  return -EINVAL;

 return 0;
}
