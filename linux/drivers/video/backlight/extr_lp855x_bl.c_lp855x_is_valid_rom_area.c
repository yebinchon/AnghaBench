
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct lp855x {int chip_id; } ;







 scalar_t__ LP8555_EPROM_END ;
 scalar_t__ LP8555_EPROM_START ;

 scalar_t__ LP8556_EPROM_END ;
 scalar_t__ LP8556_EPROM_START ;

 scalar_t__ LP8557_EPROM_END ;
 scalar_t__ LP8557_EPROM_START ;
 scalar_t__ LP855X_EEPROM_END ;
 scalar_t__ LP855X_EEPROM_START ;

__attribute__((used)) static bool lp855x_is_valid_rom_area(struct lp855x *lp, u8 addr)
{
 u8 start, end;

 switch (lp->chip_id) {
 case 134:
 case 133:
 case 132:
 case 131:
  start = LP855X_EEPROM_START;
  end = LP855X_EEPROM_END;
  break;
 case 129:
  start = LP8556_EPROM_START;
  end = LP8556_EPROM_END;
  break;
 case 130:
  start = LP8555_EPROM_START;
  end = LP8555_EPROM_END;
  break;
 case 128:
  start = LP8557_EPROM_START;
  end = LP8557_EPROM_END;
  break;
 default:
  return 0;
 }

 return addr >= start && addr <= end;
}
