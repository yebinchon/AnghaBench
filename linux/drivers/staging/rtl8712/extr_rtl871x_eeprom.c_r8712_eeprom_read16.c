
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct _adapter {int eeprom_address_size; scalar_t__ surprise_removed; } ;


 int EEPROM_READ_OPCODE ;
 int EE_9346CR ;
 int _EECS ;
 int _EEDI ;
 int _EEDO ;
 int _EEM0 ;
 int _EEM1 ;
 int _EESK ;
 int eeprom_clean (struct _adapter*) ;
 void* r8712_read8 (struct _adapter*,int) ;
 int r8712_write8 (struct _adapter*,int,int) ;
 int shift_in_bits (struct _adapter*) ;
 int shift_out_bits (struct _adapter*,int,int) ;

u16 r8712_eeprom_read16(struct _adapter *padapter, u16 reg)
{
 u16 x;
 u16 data = 0;
 u8 tmp8_ori, tmp8_new, tmp8_clk_ori, tmp8_clk_new;

 tmp8_ori = r8712_read8(padapter, 0x102502f1);
 tmp8_new = tmp8_ori & 0xf7;
 if (tmp8_ori != tmp8_new)
  r8712_write8(padapter, 0x102502f1, tmp8_new);
 tmp8_clk_ori = r8712_read8(padapter, 0x10250003);
 tmp8_clk_new = tmp8_clk_ori | 0x20;
 if (tmp8_clk_new != tmp8_clk_ori)
  r8712_write8(padapter, 0x10250003, tmp8_clk_new);
 if (padapter->surprise_removed)
  goto out;

 x = r8712_read8(padapter, EE_9346CR);
 if (padapter->surprise_removed)
  goto out;
 x &= ~(_EEDI | _EEDO | _EESK | _EEM0);
 x |= _EEM1 | _EECS;
 r8712_write8(padapter, EE_9346CR, (unsigned char)x);



 shift_out_bits(padapter, EEPROM_READ_OPCODE, 3);
 shift_out_bits(padapter, reg, padapter->eeprom_address_size);

 data = shift_in_bits(padapter);
 eeprom_clean(padapter);
out:
 if (tmp8_clk_new != tmp8_clk_ori)
  r8712_write8(padapter, 0x10250003, tmp8_clk_ori);
 if (tmp8_new != tmp8_ori)
  r8712_write8(padapter, 0x102502f1, tmp8_ori);
 return data;
}
