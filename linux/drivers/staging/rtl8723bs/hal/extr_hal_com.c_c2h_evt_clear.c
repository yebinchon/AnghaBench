
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int C2H_EVT_HOST_CLOSE ;
 int REG_C2HEVT_CLEAR ;
 int rtw_write8 (struct adapter*,int ,int ) ;

void c2h_evt_clear(struct adapter *adapter)
{
 rtw_write8(adapter, REG_C2HEVT_CLEAR, C2H_EVT_HOST_CLOSE);
}
