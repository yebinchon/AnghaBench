
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct _adapter {scalar_t__ surprise_removed; } ;


 int EE_9346CR ;
 int _EECS ;
 int _EEDI ;
 int down_clk (struct _adapter*,int*) ;
 int r8712_read8 (struct _adapter*,int ) ;
 int r8712_write8 (struct _adapter*,int ,int ) ;
 int up_clk (struct _adapter*,int*) ;

__attribute__((used)) static void eeprom_clean(struct _adapter *padapter)
{
 u16 x;

 if (padapter->surprise_removed)
  return;
 x = r8712_read8(padapter, EE_9346CR);
 if (padapter->surprise_removed)
  return;
 x &= ~(_EECS | _EEDI);
 r8712_write8(padapter, EE_9346CR, (u8)x);
 if (padapter->surprise_removed)
  return;
 up_clk(padapter, &x);
 if (padapter->surprise_removed)
  return;
 down_clk(padapter, &x);
}
