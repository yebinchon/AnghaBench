
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tty; } ;
struct serial_state {TYPE_1__ tport; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int printk (char*) ;
 int receive_chars (struct serial_state*) ;

__attribute__((used)) static irqreturn_t ser_rx_int(int irq, void *dev_id)
{
 struct serial_state *info = dev_id;





 if (!info->tport.tty)
  return IRQ_NONE;

 receive_chars(info);



 return IRQ_HANDLED;
}
