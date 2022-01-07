
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smo8800_device {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_info (int ,char*) ;

__attribute__((used)) static irqreturn_t smo8800_interrupt_thread(int irq, void *data)
{
 struct smo8800_device *smo8800 = data;

 dev_info(smo8800->dev, "detected free fall\n");
 return IRQ_HANDLED;
}
