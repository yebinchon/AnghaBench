
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;

__attribute__((used)) static irqreturn_t wlcore_hardirq(int irq, void *cookie)
{
 return IRQ_WAKE_THREAD;
}
