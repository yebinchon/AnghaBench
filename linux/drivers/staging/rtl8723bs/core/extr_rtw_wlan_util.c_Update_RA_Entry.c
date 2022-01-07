
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int dummy; } ;
struct adapter {int dummy; } ;


 int rtw_hal_update_ra_mask (struct sta_info*,int ) ;

void Update_RA_Entry(struct adapter *padapter, struct sta_info *psta)
{
 rtw_hal_update_ra_mask(psta, 0);
}
