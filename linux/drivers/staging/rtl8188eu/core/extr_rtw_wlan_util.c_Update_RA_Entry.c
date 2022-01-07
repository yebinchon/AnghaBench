
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int rtw_hal_update_ra_mask (struct adapter*,int ,int ) ;

void Update_RA_Entry(struct adapter *padapter, u32 mac_id)
{
 rtw_hal_update_ra_mask(padapter, mac_id, 0);
}
