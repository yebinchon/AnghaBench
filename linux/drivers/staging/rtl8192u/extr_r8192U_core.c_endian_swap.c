
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline u16 endian_swap(u16 *data)
{
 u16 tmp = *data;
 *data = (tmp >> 8) | (tmp << 8);
 return *data;
}
