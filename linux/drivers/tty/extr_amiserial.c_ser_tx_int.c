
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tty; } ;
struct serial_state {TYPE_1__ tport; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int serdatr; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SDR_TBE ;
 TYPE_2__ custom ;
 int printk (char*) ;
 int transmit_chars (struct serial_state*) ;

__attribute__((used)) static irqreturn_t ser_tx_int(int irq, void *dev_id)
{
 struct serial_state *info = dev_id;

 if (custom.serdatr & SDR_TBE) {




   if (!info->tport.tty)
  return IRQ_NONE;

   transmit_chars(info);



 }
 return IRQ_HANDLED;
}
