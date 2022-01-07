
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;






__attribute__((used)) static inline char speed_char(u32 scratch)
{
 switch (scratch & (3 << 12)) {
 case 130:
  return 'f';

 case 128:
  return 'l';

 case 129:
  return 'h';

 default:
  return '?';
 }
}
