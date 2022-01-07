
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;

__attribute__((used)) static irqreturn_t dummy_thread_fn(s32 irq, void *data)
{
 return IRQ_HANDLED;
}
