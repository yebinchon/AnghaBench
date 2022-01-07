
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;


 int INT_ENABLE_REG ;
 int INT_PENDING_REG ;
 int ks_sdio_interrupt ;
 int sdio_claim_irq (struct sdio_func*,int ) ;
 int sdio_writeb (struct sdio_func*,int,int ,int*) ;

__attribute__((used)) static int ks7010_sdio_setup_irqs(struct sdio_func *func)
{
 int ret;


 sdio_writeb(func, 0, INT_ENABLE_REG, &ret);
 if (ret)
  goto irq_error;

 sdio_writeb(func, 0xff, INT_PENDING_REG, &ret);
 if (ret)
  goto irq_error;


 ret = sdio_claim_irq(func, ks_sdio_interrupt);

irq_error:
 return ret;
}
