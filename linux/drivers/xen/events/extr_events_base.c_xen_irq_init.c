
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_info {int refcnt; int list; int type; } ;


 int GFP_KERNEL ;
 int IRQT_UNBOUND ;
 int cpumask_copy (int ,int ) ;
 int cpumask_of (int ) ;
 int irq_get_affinity_mask (unsigned int) ;
 int irq_set_handler_data (unsigned int,struct irq_info*) ;
 struct irq_info* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int panic (char*,unsigned int) ;
 int xen_irq_list_head ;

__attribute__((used)) static void xen_irq_init(unsigned irq)
{
 struct irq_info *info;





 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (info == ((void*)0))
  panic("Unable to allocate metadata for IRQ%d\n", irq);

 info->type = IRQT_UNBOUND;
 info->refcnt = -1;

 irq_set_handler_data(irq, info);

 list_add_tail(&info->list, &xen_irq_list_head);
}
