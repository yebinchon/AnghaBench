
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pqi_ctrl_info {int irq_mode; TYPE_1__* pqi_registers; } ;
struct TYPE_2__ {int legacy_intx_status; } ;





 int PQI_LEGACY_INTX_PENDING ;
 int readl (int *) ;

__attribute__((used)) static inline bool pqi_is_valid_irq(struct pqi_ctrl_info *ctrl_info)
{
 bool valid_irq;
 u32 intx_status;

 switch (ctrl_info->irq_mode) {
 case 129:
  valid_irq = 1;
  break;
 case 130:
  intx_status =
   readl(&ctrl_info->pqi_registers->legacy_intx_status);
  if (intx_status & PQI_LEGACY_INTX_PENDING)
   valid_irq = 1;
  else
   valid_irq = 0;
  break;
 case 128:
 default:
  valid_irq = 0;
  break;
 }

 return valid_irq;
}
