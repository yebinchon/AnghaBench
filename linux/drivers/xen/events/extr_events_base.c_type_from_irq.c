
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum xen_irq_type { ____Placeholder_xen_irq_type } xen_irq_type ;
struct TYPE_2__ {int type; } ;


 TYPE_1__* info_for_irq (unsigned int) ;

__attribute__((used)) static enum xen_irq_type type_from_irq(unsigned irq)
{
 return info_for_irq(irq)->type;
}
