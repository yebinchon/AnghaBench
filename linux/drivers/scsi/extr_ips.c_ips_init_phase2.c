
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_9__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int max_cmds; TYPE_9__* pcidev; int active; } ;
typedef TYPE_1__ ips_ha_t ;
struct TYPE_11__ {int irq; } ;


 int IPS_PRINTK (int ,TYPE_9__*,char*) ;
 int IRQF_SHARED ;
 int KERN_WARNING ;
 int METHOD_TRACE (char*,int) ;
 int SUCCESS ;
 int do_ipsintr ;
 int free_irq (int ,TYPE_1__*) ;
 int ips_abort_init (TYPE_1__*,int) ;
 int ips_allocatescbs (TYPE_1__*) ;
 int ips_deallocatescbs (TYPE_1__*,int) ;
 TYPE_1__** ips_ha ;
 int ips_hainit (TYPE_1__*) ;
 int ips_name ;
 scalar_t__ request_irq (int ,int ,int ,int ,TYPE_1__*) ;

__attribute__((used)) static int
ips_init_phase2(int index)
{
 ips_ha_t *ha;

 ha = ips_ha[index];

 METHOD_TRACE("ips_init_phase2", 1);
 if (!ha->active) {
  ips_ha[index] = ((void*)0);
  return -1;
 }


 if (request_irq(ha->pcidev->irq, do_ipsintr, IRQF_SHARED, ips_name, ha)) {
  IPS_PRINTK(KERN_WARNING, ha->pcidev,
      "Unable to install interrupt handler\n");
  return ips_abort_init(ha, index);
 }




 ha->max_cmds = 1;
 if (!ips_allocatescbs(ha)) {
  IPS_PRINTK(KERN_WARNING, ha->pcidev,
      "Unable to allocate a CCB\n");
  free_irq(ha->pcidev->irq, ha);
  return ips_abort_init(ha, index);
 }

 if (!ips_hainit(ha)) {
  IPS_PRINTK(KERN_WARNING, ha->pcidev,
      "Unable to initialize controller\n");
  free_irq(ha->pcidev->irq, ha);
  return ips_abort_init(ha, index);
 }

 ips_deallocatescbs(ha, 1);


 if (!ips_allocatescbs(ha)) {
  IPS_PRINTK(KERN_WARNING, ha->pcidev,
      "Unable to allocate CCBs\n");
  free_irq(ha->pcidev->irq, ha);
  return ips_abort_init(ha, index);
 }

 return SUCCESS;
}
