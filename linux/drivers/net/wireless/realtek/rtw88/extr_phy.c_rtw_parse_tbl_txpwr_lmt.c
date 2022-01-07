
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_txpwr_lmt_cfg_pair {int txpwr_lmt; int ch; int rs; int bw; int band; int regd; } ;
struct rtw_table {int size; struct rtw_txpwr_lmt_cfg_pair* data; } ;
struct rtw_dev {int dummy; } ;


 int rtw_phy_set_tx_power_limit (struct rtw_dev*,int ,int ,int ,int ,int ,int ) ;
 int rtw_xref_txpwr_lmt (struct rtw_dev*) ;

void rtw_parse_tbl_txpwr_lmt(struct rtw_dev *rtwdev,
        const struct rtw_table *tbl)
{
 const struct rtw_txpwr_lmt_cfg_pair *p = tbl->data;
 const struct rtw_txpwr_lmt_cfg_pair *end = p + tbl->size;

 for (; p < end; p++) {
  rtw_phy_set_tx_power_limit(rtwdev, p->regd, p->band,
        p->bw, p->rs, p->ch, p->txpwr_lmt);
 }

 rtw_xref_txpwr_lmt(rtwdev);
}
