
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max14656_chip {int irq_work; } ;


 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static void stop_irq_work(void *data)
{
 struct max14656_chip *chip = data;

 cancel_delayed_work_sync(&chip->irq_work);
}
