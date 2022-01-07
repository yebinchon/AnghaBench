
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAPLE_2MBPS ;
 int MAPLE_DMAADDR ;
 int MAPLE_ENABLE ;
 int MAPLE_MAGIC ;
 int MAPLE_RESET ;
 int MAPLE_SPEED ;
 int MAPLE_TIMEOUT (int) ;
 int MAPLE_TRIGTYPE ;
 int __raw_writel (int,int ) ;
 int maple_sendbuf ;
 int virt_to_phys (int ) ;

__attribute__((used)) static void maple_dma_reset(void)
{
 __raw_writel(MAPLE_MAGIC, MAPLE_RESET);

 __raw_writel(1, MAPLE_TRIGTYPE);
 __raw_writel(MAPLE_2MBPS | MAPLE_TIMEOUT(0xFFFF), MAPLE_SPEED);
 __raw_writel(virt_to_phys(maple_sendbuf), MAPLE_DMAADDR);
 __raw_writel(1, MAPLE_ENABLE);
}
