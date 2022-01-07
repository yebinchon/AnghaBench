
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport_ip32_private {int irq_mode; int irq_complete; } ;
struct parport {TYPE_1__* cad; struct parport* physport; struct parport_ip32_private* private_data; } ;
struct TYPE_2__ {unsigned long timeout; } ;


 int DMA_TO_DEVICE ;
 unsigned int ECR_DMAEN ;
 unsigned int ECR_SERVINTR ;
 int FIFO_NFAULT_TIMEOUT ;
 int PARPORT_IP32_IRQ_FWD ;
 int PARPORT_IP32_IRQ_HERE ;
 unsigned long jiffies ;
 unsigned long min (unsigned long,int ) ;
 int msecs_to_jiffies (int ) ;
 size_t parport_ip32_dma_get_residue () ;
 int parport_ip32_dma_start (struct parport*,int ,void*,size_t) ;
 int parport_ip32_dma_stop (struct parport*) ;
 scalar_t__ parport_ip32_fifo_wait_break (struct parport*,unsigned long) ;
 int parport_ip32_frob_econtrol (struct parport*,unsigned int,unsigned int) ;
 unsigned int parport_ip32_read_econtrol (struct parport*) ;
 int reinit_completion (int *) ;
 int wait_for_completion_interruptible_timeout (int *,unsigned long) ;

__attribute__((used)) static size_t parport_ip32_fifo_write_block_dma(struct parport *p,
      const void *buf, size_t len)
{
 struct parport_ip32_private * const priv = p->physport->private_data;
 struct parport * const physport = p->physport;
 unsigned long nfault_timeout;
 unsigned long expire;
 size_t written;
 unsigned int ecr;

 priv->irq_mode = PARPORT_IP32_IRQ_HERE;

 parport_ip32_dma_start(p, DMA_TO_DEVICE, (void *)buf, len);
 reinit_completion(&priv->irq_complete);
 parport_ip32_frob_econtrol(p, ECR_DMAEN | ECR_SERVINTR, ECR_DMAEN);

 nfault_timeout = min((unsigned long)physport->cad->timeout,
        msecs_to_jiffies(FIFO_NFAULT_TIMEOUT));
 expire = jiffies + physport->cad->timeout;
 while (1) {
  if (parport_ip32_fifo_wait_break(p, expire))
   break;
  wait_for_completion_interruptible_timeout(&priv->irq_complete,
         nfault_timeout);
  ecr = parport_ip32_read_econtrol(p);
  if (ecr & ECR_SERVINTR)
   break;
 }
 parport_ip32_dma_stop(p);
 written = len - parport_ip32_dma_get_residue();

 priv->irq_mode = PARPORT_IP32_IRQ_FWD;

 return written;
}
