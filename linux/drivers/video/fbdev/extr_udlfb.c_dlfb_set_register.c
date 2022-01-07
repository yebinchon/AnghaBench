
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;



__attribute__((used)) static char *dlfb_set_register(char *buf, u8 reg, u8 val)
{
 *buf++ = 0xAF;
 *buf++ = 0x20;
 *buf++ = reg;
 *buf++ = val;
 return buf;
}
