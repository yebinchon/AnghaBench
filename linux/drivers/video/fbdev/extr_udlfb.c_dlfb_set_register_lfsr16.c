
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int dlfb_lfsr16 (int ) ;
 char* dlfb_set_register_16 (char*,int ,int ) ;

__attribute__((used)) static char *dlfb_set_register_lfsr16(char *wrptr, u8 reg, u16 value)
{
 return dlfb_set_register_16(wrptr, reg, dlfb_lfsr16(value));
}
