
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct udc {TYPE_1__* regs; } ;
struct TYPE_2__ {int irqmsk; } ;


 int AMD_UNMASK_BIT (int ) ;
 int DBG (struct udc*,char*) ;
 int UDC_DEVINT_ENUM ;
 int UDC_DEVINT_SC ;
 int UDC_DEVINT_SI ;
 int UDC_DEVINT_SVC ;
 int UDC_DEVINT_UR ;
 int readl (int *) ;
 int writel (int,int *) ;

int udc_enable_dev_setup_interrupts(struct udc *dev)
{
 u32 tmp;

 DBG(dev, "enable device interrupts for setup data\n");


 tmp = readl(&dev->regs->irqmsk);


 tmp &= AMD_UNMASK_BIT(UDC_DEVINT_SI)
  & AMD_UNMASK_BIT(UDC_DEVINT_SC)
  & AMD_UNMASK_BIT(UDC_DEVINT_UR)
  & AMD_UNMASK_BIT(UDC_DEVINT_SVC)
  & AMD_UNMASK_BIT(UDC_DEVINT_ENUM);
 writel(tmp, &dev->regs->irqmsk);

 return 0;
}
