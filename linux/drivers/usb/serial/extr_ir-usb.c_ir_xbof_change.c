
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 ir_xbof_change(u8 xbof)
{
 u8 result;


 switch (xbof) {
 case 48:
  result = 0x10;
  break;
 case 28:
 case 24:
  result = 0x20;
  break;
 default:
 case 12:
  result = 0x30;
  break;
 case 5:
 case 6:
  result = 0x40;
  break;
 case 3:
  result = 0x50;
  break;
 case 2:
  result = 0x60;
  break;
 case 1:
  result = 0x70;
  break;
 case 0:
  result = 0x80;
  break;
 }

 return(result);
}
