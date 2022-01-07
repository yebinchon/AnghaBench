
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smo8800_device {int misc_wait; int counter; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int atomic_inc (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t smo8800_interrupt_quick(int irq, void *data)
{
 struct smo8800_device *smo8800 = data;

 atomic_inc(&smo8800->counter);
 wake_up_interruptible(&smo8800->misc_wait);
 return IRQ_WAKE_THREAD;
}
