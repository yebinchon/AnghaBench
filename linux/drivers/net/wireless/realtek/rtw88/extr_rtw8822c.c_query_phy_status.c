
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_rx_pkt_stat {int dummy; } ;
struct rtw_dev {int dummy; } ;


 int query_phy_status_page0 (struct rtw_dev*,int*,struct rtw_rx_pkt_stat*) ;
 int query_phy_status_page1 (struct rtw_dev*,int*,struct rtw_rx_pkt_stat*) ;
 int rtw_warn (struct rtw_dev*,char*,int) ;

__attribute__((used)) static void query_phy_status(struct rtw_dev *rtwdev, u8 *phy_status,
        struct rtw_rx_pkt_stat *pkt_stat)
{
 u8 page;

 page = *phy_status & 0xf;

 switch (page) {
 case 0:
  query_phy_status_page0(rtwdev, phy_status, pkt_stat);
  break;
 case 1:
  query_phy_status_page1(rtwdev, phy_status, pkt_stat);
  break;
 default:
  rtw_warn(rtwdev, "unused phy status page (%d)\n", page);
  return;
 }
}
