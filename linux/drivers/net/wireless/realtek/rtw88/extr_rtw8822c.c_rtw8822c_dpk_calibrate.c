
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct rtw_dpk_info {int dpk_path_ok; scalar_t__* result; } ;
struct TYPE_2__ {struct rtw_dpk_info dpk_info; } ;
struct rtw_dev {TYPE_1__ dm_info; } ;


 int RTW_DBG_RFK ;
 size_t rtw8822c_dpk_by_path (struct rtw_dev*,int ,size_t) ;
 int rtw8822c_dpk_check_pass (struct rtw_dev*,size_t,int ,size_t) ;
 int rtw8822c_dpk_gainloss (struct rtw_dev*,size_t) ;
 int rtw_dbg (struct rtw_dev*,int ,char*,size_t) ;
 int rtw_err (struct rtw_dev*,char*) ;
 int set_bit (size_t,int ) ;

__attribute__((used)) static void rtw8822c_dpk_calibrate(struct rtw_dev *rtwdev, u8 path)
{
 struct rtw_dpk_info *dpk_info = &rtwdev->dm_info.dpk_info;
 u32 dpk_txagc;
 u8 dpk_fail;

 rtw_dbg(rtwdev, RTW_DBG_RFK, "[DPK] s%d dpk start\n", path);

 dpk_txagc = rtw8822c_dpk_gainloss(rtwdev, path);

 dpk_fail = rtw8822c_dpk_by_path(rtwdev, dpk_txagc, path);

 if (!rtw8822c_dpk_check_pass(rtwdev, dpk_fail, dpk_txagc, path))
  rtw_err(rtwdev, "failed to do dpk calibration\n");

 rtw_dbg(rtwdev, RTW_DBG_RFK, "[DPK] s%d dpk finish\n", path);

 if (dpk_info->result[path])
  set_bit(path, dpk_info->dpk_path_ok);
}
