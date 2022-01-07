
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rtw_dpk_info {int* dpk_gs; int * thermal_dpk; scalar_t__* pre_pwsf; scalar_t__* result; scalar_t__* dpk_txagc; int dpk_path_ok; } ;
struct TYPE_4__ {int rf_path_num; } ;
struct TYPE_3__ {struct rtw_dpk_info dpk_info; } ;
struct rtw_dev {TYPE_2__ hal; TYPE_1__ dm_info; } ;


 int BIT_SUBPAGE ;
 int REG_NCTL0 ;
 int clear_bit (int,int ) ;
 int rtw8822c_dpk_thermal_read (struct rtw_dev*,int) ;
 int rtw_write32_mask (struct rtw_dev*,int,int,int) ;

__attribute__((used)) static void rtw8822c_dpk_result_reset(struct rtw_dev *rtwdev)
{
 struct rtw_dpk_info *dpk_info = &rtwdev->dm_info.dpk_info;
 u8 path;

 for (path = 0; path < rtwdev->hal.rf_path_num; path++) {
  clear_bit(path, dpk_info->dpk_path_ok);
  rtw_write32_mask(rtwdev, REG_NCTL0, BIT_SUBPAGE,
     0x8 | (path << 1));
  rtw_write32_mask(rtwdev, 0x1b58, 0x0000007f, 0x0);

  dpk_info->dpk_txagc[path] = 0;
  dpk_info->result[path] = 0;
  dpk_info->dpk_gs[path] = 0x5b;
  dpk_info->pre_pwsf[path] = 0;
  dpk_info->thermal_dpk[path] = rtw8822c_dpk_thermal_read(rtwdev,
         path);
 }
}
