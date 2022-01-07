
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int irq_mode; } ;
typedef enum pqi_irq_mode { ____Placeholder_pqi_irq_mode } pqi_irq_mode ;





 int pqi_configure_legacy_intx (struct pqi_ctrl_info*,int) ;
 int sis_enable_intx (struct pqi_ctrl_info*) ;
 int sis_enable_msix (struct pqi_ctrl_info*) ;

__attribute__((used)) static void pqi_change_irq_mode(struct pqi_ctrl_info *ctrl_info,
 enum pqi_irq_mode new_mode)
{
 switch (ctrl_info->irq_mode) {
 case 129:
  switch (new_mode) {
  case 129:
   break;
  case 130:
   pqi_configure_legacy_intx(ctrl_info, 1);
   sis_enable_intx(ctrl_info);
   break;
  case 128:
   break;
  }
  break;
 case 130:
  switch (new_mode) {
  case 129:
   pqi_configure_legacy_intx(ctrl_info, 0);
   sis_enable_msix(ctrl_info);
   break;
  case 130:
   break;
  case 128:
   pqi_configure_legacy_intx(ctrl_info, 0);
   break;
  }
  break;
 case 128:
  switch (new_mode) {
  case 129:
   sis_enable_msix(ctrl_info);
   break;
  case 130:
   pqi_configure_legacy_intx(ctrl_info, 1);
   sis_enable_intx(ctrl_info);
   break;
  case 128:
   break;
  }
  break;
 }

 ctrl_info->irq_mode = new_mode;
}
