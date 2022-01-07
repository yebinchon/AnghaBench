
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int rtw_hal_set_chan (struct adapter*,unsigned char) ;
 int rtw_set_oper_ch (struct adapter*,unsigned char) ;

void SelectChannel(struct adapter *padapter, unsigned char channel)
{

 rtw_set_oper_ch(padapter, channel);
 rtw_hal_set_chan(padapter, channel);
}
