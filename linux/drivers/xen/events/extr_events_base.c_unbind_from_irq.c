
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __unbind_from_irq (unsigned int) ;
 int irq_mapping_update_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void unbind_from_irq(unsigned int irq)
{
 mutex_lock(&irq_mapping_update_lock);
 __unbind_from_irq(irq);
 mutex_unlock(&irq_mapping_update_lock);
}
