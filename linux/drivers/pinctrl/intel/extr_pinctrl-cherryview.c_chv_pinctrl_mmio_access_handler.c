
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct chv_pinctrl {scalar_t__ regs; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_physical_address ;


 scalar_t__ ACPI_READ ;
 scalar_t__ ACPI_WRITE ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int chv_lock ;
 int chv_writel (scalar_t__,scalar_t__) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static acpi_status chv_pinctrl_mmio_access_handler(u32 function,
 acpi_physical_address address, u32 bits, u64 *value,
 void *handler_context, void *region_context)
{
 struct chv_pinctrl *pctrl = region_context;
 unsigned long flags;
 acpi_status ret = AE_OK;

 raw_spin_lock_irqsave(&chv_lock, flags);

 if (function == ACPI_WRITE)
  chv_writel((u32)(*value), pctrl->regs + (u32)address);
 else if (function == ACPI_READ)
  *value = readl(pctrl->regs + (u32)address);
 else
  ret = AE_BAD_PARAMETER;

 raw_spin_unlock_irqrestore(&chv_lock, flags);

 return ret;
}
