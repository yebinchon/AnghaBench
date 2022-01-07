
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2x00_dev {TYPE_1__* hw; } ;
typedef enum rt2800_eeprom_word { ____Placeholder_rt2800_eeprom_word } rt2800_eeprom_word ;
struct TYPE_2__ {int wiphy; } ;


 int const EEPROM_CHIP_ID ;
 int const EEPROM_WORD_COUNT ;
 int RT3593 ;
 int RT3883 ;
 scalar_t__ WARN_ONCE (int,char*,int ,int const) ;
 unsigned int* rt2800_eeprom_map ;
 unsigned int* rt2800_eeprom_map_ext ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int ) ;
 int wiphy_name (int ) ;

__attribute__((used)) static unsigned int rt2800_eeprom_word_index(struct rt2x00_dev *rt2x00dev,
          const enum rt2800_eeprom_word word)
{
 const unsigned int *map;
 unsigned int index;

 if (WARN_ONCE(word >= EEPROM_WORD_COUNT,
        "%s: invalid EEPROM word %d\n",
        wiphy_name(rt2x00dev->hw->wiphy), word))
  return 0;

 if (rt2x00_rt(rt2x00dev, RT3593) ||
     rt2x00_rt(rt2x00dev, RT3883))
  map = rt2800_eeprom_map_ext;
 else
  map = rt2800_eeprom_map;

 index = map[word];







 WARN_ONCE(word != EEPROM_CHIP_ID && index == 0,
    "%s: invalid access of EEPROM word %d\n",
    wiphy_name(rt2x00dev->hw->wiphy), word);

 return index;
}
