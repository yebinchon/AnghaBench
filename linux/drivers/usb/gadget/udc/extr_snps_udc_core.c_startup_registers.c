
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct udc {TYPE_1__* regs; } ;
struct TYPE_2__ {int cfg; } ;


 int AMD_ADDBITS (int ,int ,int ) ;
 int UDC_DEVCFG_SPD ;
 int UDC_DEVCFG_SPD_FS ;
 int UDC_DEVCFG_SPD_HS ;
 int readl (int *) ;
 int udc_basic_init (struct udc*) ;
 int udc_mask_unused_interrupts (struct udc*) ;
 int udc_setup_endpoints (struct udc*) ;
 int udc_soft_reset (struct udc*) ;
 scalar_t__ use_fullspeed ;
 int writel (int ,int *) ;

__attribute__((used)) static int startup_registers(struct udc *dev)
{
 u32 tmp;


 udc_soft_reset(dev);


 udc_mask_unused_interrupts(dev);


 udc_basic_init(dev);

 udc_setup_endpoints(dev);


 tmp = readl(&dev->regs->cfg);
 if (use_fullspeed)
  tmp = AMD_ADDBITS(tmp, UDC_DEVCFG_SPD_FS, UDC_DEVCFG_SPD);
 else
  tmp = AMD_ADDBITS(tmp, UDC_DEVCFG_SPD_HS, UDC_DEVCFG_SPD);
 writel(tmp, &dev->regs->cfg);

 return 0;
}
