
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int watch_dog_cnt; } ;


 int rtw_iterate_stas_atomic (struct rtw_dev*,int ,struct rtw_dev*) ;
 int rtw_phy_ra_info_update_iter ;

__attribute__((used)) static void rtw_phy_ra_info_update(struct rtw_dev *rtwdev)
{
 if (rtwdev->watch_dog_cnt & 0x3)
  return;

 rtw_iterate_stas_atomic(rtwdev, rtw_phy_ra_info_update_iter, rtwdev);
}
