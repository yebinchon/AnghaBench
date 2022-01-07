
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;







__attribute__((used)) static inline char *musb_ep_xfertype_string(u8 type)
{
 char *s;

 switch (type) {
 case 130:
  s = "ctrl";
  break;
 case 128:
  s = "iso";
  break;
 case 131:
  s = "bulk";
  break;
 case 129:
  s = "int";
  break;
 default:
  s = "";
  break;
 }
 return s;
}
