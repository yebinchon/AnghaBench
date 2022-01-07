
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_phy_stat_iter_data {int min_rssi; struct rtw_dev* rtwdev; } ;
struct rtw_dm_info {int min_rssi; int pre_min_rssi; } ;
struct rtw_dev {struct rtw_dm_info dm_info; } ;


 int U8_MAX ;
 int rtw_iterate_stas_atomic (struct rtw_dev*,int ,struct rtw_phy_stat_iter_data*) ;
 int rtw_phy_stat_rssi_iter ;

__attribute__((used)) static void rtw_phy_stat_rssi(struct rtw_dev *rtwdev)
{
 struct rtw_dm_info *dm_info = &rtwdev->dm_info;
 struct rtw_phy_stat_iter_data data = {};

 data.rtwdev = rtwdev;
 data.min_rssi = U8_MAX;
 rtw_iterate_stas_atomic(rtwdev, rtw_phy_stat_rssi_iter, &data);

 dm_info->pre_min_rssi = dm_info->min_rssi;
 dm_info->min_rssi = data.min_rssi;
}
