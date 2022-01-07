
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;
typedef int gdth_ha_str ;


 int __gdth_interrupt (int *,int,int *) ;

__attribute__((used)) static irqreturn_t gdth_interrupt(int irq, void *dev_id)
{
 gdth_ha_str *ha = dev_id;

 return __gdth_interrupt(ha, 0, ((void*)0));
}
