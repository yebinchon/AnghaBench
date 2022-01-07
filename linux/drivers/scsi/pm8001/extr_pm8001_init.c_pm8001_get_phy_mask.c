
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pm8001_hba_info {TYPE_1__* pdev; } ;
struct TYPE_2__ {int subsystem_device; } ;


 int PM8001_INIT_DBG (struct pm8001_hba_info*,int ) ;
 int pm8001_printk (char*,int) ;

__attribute__((used)) static
void pm8001_get_phy_mask(struct pm8001_hba_info *pm8001_ha, int *phymask)
{
 switch (pm8001_ha->pdev->subsystem_device) {
 case 0x0070:
 case 0x0072:
  *phymask = 0x0000;
  break;

 case 0x0071:
 case 0x0073:
  *phymask = 0xFFFF;
  break;

 case 0x0080:
  *phymask = 0x00F0;
  break;

 case 0x0081:
  *phymask = 0x0FF0;
  break;

 case 0x0082:
  *phymask = 0xFF00;
  break;

 default:
  PM8001_INIT_DBG(pm8001_ha,
   pm8001_printk("Unknown subsystem device=0x%.04x",
    pm8001_ha->pdev->subsystem_device));
 }
}
