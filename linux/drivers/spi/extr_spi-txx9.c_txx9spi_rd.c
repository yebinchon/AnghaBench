
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct txx9spi {scalar_t__ membase; } ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static u32 txx9spi_rd(struct txx9spi *c, int reg)
{
 return __raw_readl(c->membase + reg);
}
