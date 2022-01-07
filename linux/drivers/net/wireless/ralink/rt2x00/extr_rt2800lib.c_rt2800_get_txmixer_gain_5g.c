
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rt2x00_dev {int dummy; } ;


 int EEPROM_TXMIXER_GAIN_A ;
 int EEPROM_TXMIXER_GAIN_A_VAL ;
 int RT3593 ;
 int RT3883 ;
 int rt2800_eeprom_read (struct rt2x00_dev*,int ) ;
 int rt2x00_get_field16 (int,int ) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int ) ;

__attribute__((used)) static u8 rt2800_get_txmixer_gain_5g(struct rt2x00_dev *rt2x00dev)
{
 u16 word;

 if (rt2x00_rt(rt2x00dev, RT3593) ||
     rt2x00_rt(rt2x00dev, RT3883))
  return 0;

 word = rt2800_eeprom_read(rt2x00dev, EEPROM_TXMIXER_GAIN_A);
 if ((word & 0x00ff) != 0x00ff)
  return rt2x00_get_field16(word, EEPROM_TXMIXER_GAIN_A_VAL);

 return 0;
}
