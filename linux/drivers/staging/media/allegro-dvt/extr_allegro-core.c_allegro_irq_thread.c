
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int allegro_receive_message (struct allegro_dev*) ;

__attribute__((used)) static irqreturn_t allegro_irq_thread(int irq, void *data)
{
 struct allegro_dev *dev = data;

 allegro_receive_message(dev);

 return IRQ_HANDLED;
}
