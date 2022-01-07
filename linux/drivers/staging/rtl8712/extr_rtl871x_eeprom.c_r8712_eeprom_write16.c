
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct _adapter {int eeprom_address_size; } ;


 int EEPROM_EWDS_OPCODE ;
 int EEPROM_EWEN_OPCODE ;
 int EEPROM_WRITE_OPCODE ;
 int EE_9346CR ;
 int _EECS ;
 int _EEDI ;
 int _EEDO ;
 int _EEM0 ;
 int _EEM1 ;
 int _EESK ;
 int eeprom_clean (struct _adapter*) ;
 int r8712_read8 (struct _adapter*,int) ;
 int r8712_write8 (struct _adapter*,int,int) ;
 int shift_out_bits (struct _adapter*,int ,int) ;
 int standby (struct _adapter*) ;
 scalar_t__ wait_eeprom_cmd_done (struct _adapter*) ;

void r8712_eeprom_write16(struct _adapter *padapter, u16 reg, u16 data)
{
 u8 x;
 u8 tmp8_ori, tmp8_new, tmp8_clk_ori, tmp8_clk_new;

 tmp8_ori = r8712_read8(padapter, 0x102502f1);
 tmp8_new = tmp8_ori & 0xf7;
 if (tmp8_ori != tmp8_new)
  r8712_write8(padapter, 0x102502f1, tmp8_new);
 tmp8_clk_ori = r8712_read8(padapter, 0x10250003);
 tmp8_clk_new = tmp8_clk_ori | 0x20;
 if (tmp8_clk_new != tmp8_clk_ori)
  r8712_write8(padapter, 0x10250003, tmp8_clk_new);
 x = r8712_read8(padapter, EE_9346CR);
 x &= ~(_EEDI | _EEDO | _EESK | _EEM0);
 x |= _EEM1 | _EECS;
 r8712_write8(padapter, EE_9346CR, x);
 shift_out_bits(padapter, EEPROM_EWEN_OPCODE, 5);
 if (padapter->eeprom_address_size == 8)
  shift_out_bits(padapter, 0, 6);
 else
  shift_out_bits(padapter, 0, 4);
 standby(padapter);




 standby(padapter);



 shift_out_bits(padapter, EEPROM_WRITE_OPCODE, 3);

 shift_out_bits(padapter, reg, padapter->eeprom_address_size);

 shift_out_bits(padapter, data, 16);
 if (wait_eeprom_cmd_done(padapter)) {
  standby(padapter);
  shift_out_bits(padapter, EEPROM_EWDS_OPCODE, 5);
  shift_out_bits(padapter, reg, 4);
  eeprom_clean(padapter);
 }
 if (tmp8_clk_new != tmp8_clk_ori)
  r8712_write8(padapter, 0x10250003, tmp8_clk_ori);
 if (tmp8_new != tmp8_ori)
  r8712_write8(padapter, 0x102502f1, tmp8_ori);
}
