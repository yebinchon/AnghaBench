
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static u8 calc_cksum(int start, int end, u8 *mem)
{
 u8 tmp = 0;
 int i;

 for (i = start; i < end; i++)
  tmp += mem[i];

 return tmp;
}
