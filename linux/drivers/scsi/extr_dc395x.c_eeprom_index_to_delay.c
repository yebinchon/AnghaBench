
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NvRamType {size_t delay_time; } ;


 size_t* eeprom_index_to_delay_map ;

__attribute__((used)) static void eeprom_index_to_delay(struct NvRamType *eeprom)
{
 eeprom->delay_time = eeprom_index_to_delay_map[eeprom->delay_time];
}
