
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 checksum(u8 *buffer, u8 length)
{
 u8 sum = 0;
 u8 *end = buffer + length;

 while (buffer < end)
  sum += *buffer++;
 return sum;
}
