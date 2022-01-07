
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static void swap_u32(u32 *v1, u32 *v2)
{
 u32 tmp;

 tmp = *v1;
 *v1 = *v2;
 *v2 = tmp;
}
