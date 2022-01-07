
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtw_dev {int dummy; } ;


 int RTW_DBG_RFK ;
 int rtw8822c_dac_cal_rf_mode (struct rtw_dev*,int*,int*) ;
 int rtw8822c_get_path_write_addr (int ) ;
 int rtw_dbg (struct rtw_dev*,int ,char*,int,int) ;
 int rtw_write32 (struct rtw_dev*,int,int) ;
 int rtw_write32_mask (struct rtw_dev*,int,int,int) ;
 int rtw_write8 (struct rtw_dev*,int,int) ;

__attribute__((used)) static void rtw8822c_dac_cal_step2(struct rtw_dev *rtwdev,
       u8 path, u32 *ic_out, u32 *qc_out)
{
 u32 base_addr;
 u32 ic, qc, ic_in, qc_in;

 base_addr = rtw8822c_get_path_write_addr(path);
 rtw_write32_mask(rtwdev, base_addr + 0xbc, 0xf0000000, 0x0);
 rtw_write32_mask(rtwdev, base_addr + 0xc0, 0xf, 0x8);
 rtw_write32_mask(rtwdev, base_addr + 0xd8, 0xf0000000, 0x0);
 rtw_write32_mask(rtwdev, base_addr + 0xdc, 0xf, 0x8);

 rtw_write32(rtwdev, 0x1b00, 0x00000008);
 rtw_write8(rtwdev, 0x1bcc, 0x03f);
 rtw_write32(rtwdev, base_addr + 0x0c, 0xdff00220);
 rtw_write32(rtwdev, base_addr + 0x10, 0x02d508c5);
 rtw_write32(rtwdev, 0x1c3c, 0x00088103);

 rtw8822c_dac_cal_rf_mode(rtwdev, &ic_in, &qc_in);
 ic = ic_in;
 qc = qc_in;


 if (ic != 0x0)
  ic = 0x400 - ic;
 if (qc != 0x0)
  qc = 0x400 - qc;
 if (ic < 0x300) {
  ic = ic * 2 * 6 / 5;
  ic = ic + 0x80;
 } else {
  ic = (0x400 - ic) * 2 * 6 / 5;
  ic = 0x7f - ic;
 }
 if (qc < 0x300) {
  qc = qc * 2 * 6 / 5;
  qc = qc + 0x80;
 } else {
  qc = (0x400 - qc) * 2 * 6 / 5;
  qc = 0x7f - qc;
 }

 *ic_out = ic;
 *qc_out = qc;

 rtw_dbg(rtwdev, RTW_DBG_RFK, "[DACK] before i=0x%x, q=0x%x\n", ic_in, qc_in);
 rtw_dbg(rtwdev, RTW_DBG_RFK, "[DACK] after  i=0x%x, q=0x%x\n", ic, qc);
}
