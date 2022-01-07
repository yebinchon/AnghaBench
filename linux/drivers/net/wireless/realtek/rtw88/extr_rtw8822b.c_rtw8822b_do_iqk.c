
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_iqk_para {int segment_iqk; int clear; } ;
struct rtw_dev {int dummy; } ;


 int BIT (int) ;
 int GENMASK (int,int ) ;
 int REG_IQKFAILMSK ;
 int RFREG_MASK ;
 int RF_DTXLOK ;
 int RF_PATH_A ;
 int RTW_DBG_PHY ;
 int msleep (int) ;
 int rtw_dbg (struct rtw_dev*,int ,char*,int,int,int,int) ;
 int rtw_fw_do_iqk (struct rtw_dev*,struct rtw_iqk_para*) ;
 int rtw_read32_mask (struct rtw_dev*,int ,int ) ;
 int rtw_read_rf (struct rtw_dev*,int ,int ,int ) ;
 int rtw_write_rf (struct rtw_dev*,int ,int ,int ,int) ;

__attribute__((used)) static void rtw8822b_do_iqk(struct rtw_dev *rtwdev)
{
 static int do_iqk_cnt;
 struct rtw_iqk_para para = {.clear = 0, .segment_iqk = 0};
 u32 rf_reg, iqk_fail_mask;
 int counter;
 bool reload;

 rtw_fw_do_iqk(rtwdev, &para);

 for (counter = 0; counter < 300; counter++) {
  rf_reg = rtw_read_rf(rtwdev, RF_PATH_A, RF_DTXLOK, RFREG_MASK);
  if (rf_reg == 0xabcde)
   break;
  msleep(20);
 }
 rtw_write_rf(rtwdev, RF_PATH_A, RF_DTXLOK, RFREG_MASK, 0x0);

 reload = !!rtw_read32_mask(rtwdev, REG_IQKFAILMSK, BIT(16));
 iqk_fail_mask = rtw_read32_mask(rtwdev, REG_IQKFAILMSK, GENMASK(7, 0));
 rtw_dbg(rtwdev, RTW_DBG_PHY,
  "iqk counter=%d reload=%d do_iqk_cnt=%d n_iqk_fail(mask)=0x%02x\n",
  counter, reload, ++do_iqk_cnt, iqk_fail_mask);
}
