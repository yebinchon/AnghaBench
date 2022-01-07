
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mt7601u_dev {TYPE_1__* ee; } ;
struct TYPE_2__ {int rf_freq_off; } ;


 int BIT (int) ;
 size_t MT_EE_FREQ_OFFSET ;
 size_t MT_EE_FREQ_OFFSET_COMPENSATION ;
 void* field_validate (int) ;

__attribute__((used)) static void
mt7601u_set_rf_freq_off(struct mt7601u_dev *dev, u8 *eeprom)
{
 u8 comp;

 dev->ee->rf_freq_off = field_validate(eeprom[MT_EE_FREQ_OFFSET]);
 comp = field_validate(eeprom[MT_EE_FREQ_OFFSET_COMPENSATION]);

 if (comp & BIT(7))
  dev->ee->rf_freq_off -= comp & 0x7f;
 else
  dev->ee->rf_freq_off += comp;
}
