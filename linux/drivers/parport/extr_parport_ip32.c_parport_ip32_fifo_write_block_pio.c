
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int fifo; } ;
struct parport_ip32_private {int irq_mode; TYPE_1__ regs; } ;
struct parport {scalar_t__ irq; TYPE_2__* physport; } ;
struct TYPE_4__ {struct parport_ip32_private* private_data; } ;


 int PARPORT_IP32_IRQ_FWD ;
 int PARPORT_IP32_IRQ_HERE ;
 scalar_t__ PARPORT_IRQ_NONE ;
 unsigned int parport_ip32_fwp_wait_interrupt (struct parport*) ;
 unsigned int parport_ip32_fwp_wait_polling (struct parport*) ;
 int writeb (int const,int ) ;
 int writesb (int ,int const*,unsigned int) ;

__attribute__((used)) static size_t parport_ip32_fifo_write_block_pio(struct parport *p,
      const void *buf, size_t len)
{
 struct parport_ip32_private * const priv = p->physport->private_data;
 const u8 *bufp = buf;
 size_t left = len;

 priv->irq_mode = PARPORT_IP32_IRQ_HERE;

 while (left > 0) {
  unsigned int count;

  count = (p->irq == PARPORT_IRQ_NONE) ?
   parport_ip32_fwp_wait_polling(p) :
   parport_ip32_fwp_wait_interrupt(p);
  if (count == 0)
   break;
  if (count > left)
   count = left;
  if (count == 1) {
   writeb(*bufp, priv->regs.fifo);
   bufp++, left--;
  } else {
   writesb(priv->regs.fifo, bufp, count);
   bufp += count, left -= count;
  }
 }

 priv->irq_mode = PARPORT_IP32_IRQ_FWD;

 return len - left;
}
