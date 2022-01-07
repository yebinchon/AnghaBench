
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adapter {int dummy; } ;
struct TYPE_2__ {int setch_mutex; } ;


 TYPE_1__* adapter_to_dvobj (struct adapter*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int rtw_hal_set_chan (struct adapter*,unsigned char) ;
 int rtw_set_oper_ch (struct adapter*,unsigned char) ;

void SelectChannel(struct adapter *padapter, unsigned char channel)
{
 if (mutex_lock_interruptible(&(adapter_to_dvobj(padapter)->setch_mutex)))
  return;


 rtw_set_oper_ch(padapter, channel);

 rtw_hal_set_chan(padapter, channel);

 mutex_unlock(&(adapter_to_dvobj(padapter)->setch_mutex));
}
