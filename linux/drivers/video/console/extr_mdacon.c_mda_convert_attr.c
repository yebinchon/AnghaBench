
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline u16 mda_convert_attr(u16 ch)
{
 u16 attr = 0x0700;






 if (ch & 0x0800) attr = 0x7000;
 else if (ch & 0x0400) attr = 0x0100;

 return ((ch & 0x0200) << 2) |
  (ch & 0x8000) |
  (ch & 0x00ff) | attr;
}
