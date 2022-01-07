
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static inline u32 spi_rate(u32 rate, u16 cpsdvsr, u16 scr)
{
 return rate / (cpsdvsr * (1 + scr));
}
