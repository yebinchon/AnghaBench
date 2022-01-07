
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_tx_report {int sn; } ;
struct rtw_tx_pkt_info {int sn; int report; } ;
struct rtw_dev {struct rtw_tx_report tx_report; } ;


 int atomic_inc_return (int *) ;

__attribute__((used)) static void rtw_tx_report_enable(struct rtw_dev *rtwdev,
     struct rtw_tx_pkt_info *pkt_info)
{
 struct rtw_tx_report *tx_report = &rtwdev->tx_report;





 pkt_info->sn = (atomic_inc_return(&tx_report->sn) << 2) & 0xfc;
 pkt_info->report = 1;
}
