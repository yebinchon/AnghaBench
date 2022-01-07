
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int _adapter ;


 int CLOCK_RATE ;
 int EE_9346CR ;
 int _EESK ;
 int _func_enter_ ;
 int _func_exit_ ;
 int rtw_write8 (int *,int ,int ) ;
 int udelay (int ) ;

void up_clk(_adapter *padapter, u16 *x)
{
_func_enter_;
 *x = *x | _EESK;
 rtw_write8(padapter, EE_9346CR, (u8)*x);
 udelay(CLOCK_RATE);

_func_exit_;

}
