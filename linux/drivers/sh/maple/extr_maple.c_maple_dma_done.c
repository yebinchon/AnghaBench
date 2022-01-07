
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAPLE_STATE ;
 int __raw_readl (int ) ;

__attribute__((used)) static int maple_dma_done(void)
{
 return (__raw_readl(MAPLE_STATE) & 1) == 0;
}
