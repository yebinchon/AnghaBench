
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;
__attribute__((used)) static bool
convert_sfu_char(const __u16 src_char, char *target)
{





 switch (src_char) {
 case 132:
  *target = ':';
  break;
 case 133:
  *target = '*';
  break;
 case 128:
  *target = '?';
  break;
 case 129:
  *target = '|';
  break;
 case 131:
  *target = '>';
  break;
 case 130:
  *target = '<';
  break;
 default:
  return 0;
 }
 return 1;
}
