
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_dev {int dummy; } ;


 scalar_t__ RTW_REGD_MAX ;
 int rtw_xref_txpwr_lmt_by_bw (struct rtw_dev*,scalar_t__) ;

__attribute__((used)) static void rtw_xref_txpwr_lmt(struct rtw_dev *rtwdev)
{
 u8 regd;

 for (regd = 0; regd < RTW_REGD_MAX; regd++)
  rtw_xref_txpwr_lmt_by_bw(rtwdev, regd);
}
