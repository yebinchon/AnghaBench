
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct rtw_dpk_info {int is_reload; scalar_t__ dpk_ch; } ;
struct TYPE_2__ {struct rtw_dpk_info dpk_info; } ;
struct rtw_dev {TYPE_1__ dm_info; } ;


 int RFREG_MASK ;
 int RF_PATH_A ;
 int RTW_DBG_RFK ;
 int rtw8822c_dpk_reload_data (struct rtw_dev*) ;
 int rtw_dbg (struct rtw_dev*,int ,char*,scalar_t__) ;
 int rtw_read_rf (struct rtw_dev*,int ,int,int ) ;

__attribute__((used)) static bool rtw8822c_dpk_reload(struct rtw_dev *rtwdev)
{
 struct rtw_dpk_info *dpk_info = &rtwdev->dm_info.dpk_info;
 u8 channel;

 dpk_info->is_reload = 0;

 channel = (u8)(rtw_read_rf(rtwdev, RF_PATH_A, 0x18, RFREG_MASK) & 0xff);

 if (channel == dpk_info->dpk_ch) {
  rtw_dbg(rtwdev, RTW_DBG_RFK,
   "[DPK] DPK reload for CH%d!!\n", dpk_info->dpk_ch);
  rtw8822c_dpk_reload_data(rtwdev);
  dpk_info->is_reload = 1;
 }

 return dpk_info->is_reload;
}
