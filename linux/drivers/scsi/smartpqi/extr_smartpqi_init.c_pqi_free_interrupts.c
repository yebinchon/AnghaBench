
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;


 int pqi_disable_msix_interrupts (struct pqi_ctrl_info*) ;
 int pqi_free_irqs (struct pqi_ctrl_info*) ;

__attribute__((used)) static void pqi_free_interrupts(struct pqi_ctrl_info *ctrl_info)
{
 pqi_free_irqs(ctrl_info);
 pqi_disable_msix_interrupts(ctrl_info);
}
