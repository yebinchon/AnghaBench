
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int dummy; } ;
struct adapter {int dummy; } ;


 int set_sta_rate (struct adapter*,struct sta_info*) ;

__attribute__((used)) static void rtw_dm_ra_mask_hdl(struct adapter *padapter, struct sta_info *psta)
{
 if (psta) {
  set_sta_rate(padapter, psta);
 }
}
