
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int irqreturn_t ;
struct TYPE_4__ {int spinlock; scalar_t__ port_tts; } ;
struct TYPE_3__ {int (* read_buff_add ) (int ) ;} ;


 int IRQ_HANDLED ;
 scalar_t__ UART_LSR ;
 int UART_LSR_DR ;
 scalar_t__ UART_RX ;
 int inb_p (scalar_t__) ;
 TYPE_2__ speakup_info ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ) ;
 TYPE_1__* synth ;

__attribute__((used)) static irqreturn_t synth_readbuf_handler(int irq, void *dev_id)
{
 unsigned long flags;
 int c;

 spin_lock_irqsave(&speakup_info.spinlock, flags);
 while (inb_p(speakup_info.port_tts + UART_LSR) & UART_LSR_DR) {
  c = inb_p(speakup_info.port_tts + UART_RX);
  synth->read_buff_add((u_char)c);
 }
 spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 return IRQ_HANDLED;
}
