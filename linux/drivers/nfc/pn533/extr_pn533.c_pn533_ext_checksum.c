
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static inline u8 pn533_ext_checksum(u16 value)
{
 return ~(u8)(((value & 0xFF00) >> 8) + (u8)(value & 0xFF)) + 1;
}
