
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int WMMOnAssocRsp (struct adapter*) ;

void rtw_wmm_event_callback(struct adapter *padapter, u8 *pbuf)
{
 WMMOnAssocRsp(padapter);
}
