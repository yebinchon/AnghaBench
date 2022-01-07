
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RAVE_SP_EEPROM_WRITE ;
 int rave_sp_eeprom_access (void*,int ,unsigned int,void*,size_t) ;

__attribute__((used)) static int rave_sp_eeprom_reg_write(void *eeprom, unsigned int offset,
        void *val, size_t bytes)
{
 return rave_sp_eeprom_access(eeprom, RAVE_SP_EEPROM_WRITE,
         offset, val, bytes);
}
