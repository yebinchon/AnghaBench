
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 char* dlfb_set_register (char*,int,int ) ;

__attribute__((used)) static char *dlfb_set_color_depth(char *buf, u8 selection)
{
 return dlfb_set_register(buf, 0x00, selection);
}
