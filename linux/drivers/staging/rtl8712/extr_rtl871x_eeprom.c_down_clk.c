
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct _adapter {int dummy; } ;


 int CLOCK_RATE ;
 int EE_9346CR ;
 int _EESK ;
 int r8712_write8 (struct _adapter*,int ,int ) ;
 int udelay (int ) ;

__attribute__((used)) static void down_clk(struct _adapter *padapter, u16 *x)
{
 *x = *x & ~_EESK;
 r8712_write8(padapter, EE_9346CR, (u8)*x);
 udelay(CLOCK_RATE);
}
