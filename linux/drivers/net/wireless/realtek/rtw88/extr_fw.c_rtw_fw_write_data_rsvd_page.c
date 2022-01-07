
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int rsvd_boundary; } ;
struct rtw_dev {TYPE_1__ fifo; int mutex; } ;


 int BIT_BCN_VALID_V1 ;
 int BIT_ENSWBCN ;
 int BIT_EN_BCNQ_DL ;
 int BIT_MASK_BCN_HEAD_1_V1 ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ REG_CR ;
 int REG_FIFOPAGE_CTRL_2 ;
 scalar_t__ REG_FWHW_TXQ_CTRL ;
 int check_hw_ready (struct rtw_dev*,int ,int,int) ;
 int lockdep_assert_held (int *) ;
 int rtw_err (struct rtw_dev*,char*) ;
 int rtw_hci_write_data_rsvd_page (struct rtw_dev*,int*,int ) ;
 int rtw_read8 (struct rtw_dev*,scalar_t__) ;
 int rtw_write16 (struct rtw_dev*,int ,int) ;
 int rtw_write8 (struct rtw_dev*,scalar_t__,int) ;

int rtw_fw_write_data_rsvd_page(struct rtw_dev *rtwdev, u16 pg_addr,
    u8 *buf, u32 size)
{
 u8 bckp[2];
 u8 val;
 u16 rsvd_pg_head;
 int ret;

 lockdep_assert_held(&rtwdev->mutex);

 if (!size)
  return -EINVAL;

 pg_addr &= BIT_MASK_BCN_HEAD_1_V1;
 rtw_write16(rtwdev, REG_FIFOPAGE_CTRL_2, pg_addr | BIT_BCN_VALID_V1);

 val = rtw_read8(rtwdev, REG_CR + 1);
 bckp[0] = val;
 val |= BIT_ENSWBCN >> 8;
 rtw_write8(rtwdev, REG_CR + 1, val);

 val = rtw_read8(rtwdev, REG_FWHW_TXQ_CTRL + 2);
 bckp[1] = val;
 val &= ~(BIT_EN_BCNQ_DL >> 16);
 rtw_write8(rtwdev, REG_FWHW_TXQ_CTRL + 2, val);

 ret = rtw_hci_write_data_rsvd_page(rtwdev, buf, size);
 if (ret) {
  rtw_err(rtwdev, "failed to write data to rsvd page\n");
  goto restore;
 }

 if (!check_hw_ready(rtwdev, REG_FIFOPAGE_CTRL_2, BIT_BCN_VALID_V1, 1)) {
  rtw_err(rtwdev, "error beacon valid\n");
  ret = -EBUSY;
 }

restore:
 rsvd_pg_head = rtwdev->fifo.rsvd_boundary;
 rtw_write16(rtwdev, REG_FIFOPAGE_CTRL_2,
      rsvd_pg_head | BIT_BCN_VALID_V1);
 rtw_write8(rtwdev, REG_FWHW_TXQ_CTRL + 2, bckp[1]);
 rtw_write8(rtwdev, REG_CR + 1, bckp[0]);

 return ret;
}
