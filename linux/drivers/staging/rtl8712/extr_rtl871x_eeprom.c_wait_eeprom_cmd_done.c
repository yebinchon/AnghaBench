
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct _adapter {int dummy; } ;


 int CLOCK_RATE ;
 int EE_9346CR ;
 int _EEDO ;
 int r8712_read8 (struct _adapter*,int ) ;
 int standby (struct _adapter*) ;
 int udelay (int ) ;

__attribute__((used)) static u16 wait_eeprom_cmd_done(struct _adapter *padapter)
{
 u8 x;
 u16 i;

 standby(padapter);
 for (i = 0; i < 200; i++) {
  x = r8712_read8(padapter, EE_9346CR);
  if (x & _EEDO)
   return 1;
  udelay(CLOCK_RATE);
 }
 return 0;
}
