
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static inline u8 port100_checksum(u16 value)
{
 return ~(((u8 *)&value)[0] + ((u8 *)&value)[1]) + 1;
}
