
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_dev {int dummy; } ;


 int rtw_is_assoc (struct rtw_dev*) ;
 int rtw_phy_cck_pd_lv_link (struct rtw_dev*) ;
 int rtw_phy_cck_pd_lv_unlink (struct rtw_dev*) ;

__attribute__((used)) static u8 rtw_phy_cck_pd_lv(struct rtw_dev *rtwdev)
{
 if (!rtw_is_assoc(rtwdev))
  return rtw_phy_cck_pd_lv_unlink(rtwdev);
 else
  return rtw_phy_cck_pd_lv_link(rtwdev);
}
