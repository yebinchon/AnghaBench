
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtw_dev {int dummy; } ;


 int RTW_DPK_AGC_OUT ;
 int RTW_DPK_GL_LARGE ;
 int RTW_DPK_GL_LESS ;
 int rtw8822c_dpk_pas_read (struct rtw_dev*,int ) ;
 int rtw8822c_psd_log2base (int) ;

__attribute__((used)) static u8 rtw8822c_dpk_agc_loss_chk(struct rtw_dev *rtwdev, u8 path)
{
 u32 loss, loss_db;

 loss = rtw8822c_dpk_pas_read(rtwdev, path);
 if (loss < 0x4000000)
  return RTW_DPK_GL_LESS;
 loss_db = 3 * rtw8822c_psd_log2base(loss >> 13) - 3870;

 if (loss_db > 1000)
  return RTW_DPK_GL_LARGE;
 else if (loss_db < 250)
  return RTW_DPK_GL_LESS;
 else
  return RTW_DPK_AGC_OUT;
}
