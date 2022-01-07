
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int rtw_phy_cck_pd (struct rtw_dev*) ;
 int rtw_phy_dig (struct rtw_dev*) ;
 int rtw_phy_dpk_track (struct rtw_dev*) ;
 int rtw_phy_ra_info_update (struct rtw_dev*) ;
 int rtw_phy_statistics (struct rtw_dev*) ;

void rtw_phy_dynamic_mechanism(struct rtw_dev *rtwdev)
{

 rtw_phy_statistics(rtwdev);
 rtw_phy_dig(rtwdev);
 rtw_phy_cck_pd(rtwdev);
 rtw_phy_ra_info_update(rtwdev);
 rtw_phy_dpk_track(rtwdev);
}
