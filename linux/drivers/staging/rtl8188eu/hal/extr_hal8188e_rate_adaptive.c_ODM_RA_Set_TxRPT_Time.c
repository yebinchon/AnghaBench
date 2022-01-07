
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct odm_dm_struct {struct adapter* Adapter; } ;
struct adapter {int dummy; } ;


 int REG_TX_RPT_TIME ;
 int usb_write16 (struct adapter*,int ,int ) ;

void ODM_RA_Set_TxRPT_Time(struct odm_dm_struct *dm_odm, u16 minRptTime)
{
 struct adapter *adapt = dm_odm->Adapter;

 usb_write16(adapt, REG_TX_RPT_TIME, minRptTime);
}
