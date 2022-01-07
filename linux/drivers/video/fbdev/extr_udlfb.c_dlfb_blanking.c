
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;






 char* dlfb_set_register (char*,int,int) ;

__attribute__((used)) static char *dlfb_blanking(char *buf, int fb_blank)
{
 u8 reg;

 switch (fb_blank) {
 case 129:
  reg = 0x07;
  break;
 case 131:
  reg = 0x05;
  break;
 case 128:
  reg = 0x03;
  break;
 case 130:
  reg = 0x01;
  break;
 default:
  reg = 0x00;
 }

 buf = dlfb_set_register(buf, 0x1F, reg);

 return buf;
}
