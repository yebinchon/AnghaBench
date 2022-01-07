
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *dlfb_dummy_render(char *buf)
{
 *buf++ = 0xAF;
 *buf++ = 0x6A;
 *buf++ = 0x00;
 *buf++ = 0x00;
 *buf++ = 0x00;
 *buf++ = 0x01;
 *buf++ = 0x00;
 *buf++ = 0x00;
 *buf++ = 0x00;
 return buf;
}
