
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct txx9spi {scalar_t__ membase; } ;


 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static void txx9spi_wr(struct txx9spi *c, u32 val, int reg)
{
 __raw_writel(val, c->membase + reg);
}
