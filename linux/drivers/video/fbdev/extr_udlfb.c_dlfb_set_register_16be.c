
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;


 char* dlfb_set_register (char*,scalar_t__,int) ;

__attribute__((used)) static char *dlfb_set_register_16be(char *wrptr, u8 reg, u16 value)
{
 wrptr = dlfb_set_register(wrptr, reg, value);
 return dlfb_set_register(wrptr, reg+1, value >> 8);
}
