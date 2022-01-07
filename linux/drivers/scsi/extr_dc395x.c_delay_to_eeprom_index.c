
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int* eeprom_index_to_delay_map ;

__attribute__((used)) static int delay_to_eeprom_index(int delay)
{
 u8 idx = 0;
 while (idx < 7 && eeprom_index_to_delay_map[idx] < delay)
  idx++;
 return idx;
}
