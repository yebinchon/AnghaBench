
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {unsigned int flags; } ;


 unsigned int IRQF_SHARED ;
 unsigned int IRQF_TRIGGER_MASK ;

__attribute__((used)) static inline unsigned int get_irq_flags(struct resource *res)
{
 return IRQF_SHARED | (res->flags & IRQF_TRIGGER_MASK);
}
