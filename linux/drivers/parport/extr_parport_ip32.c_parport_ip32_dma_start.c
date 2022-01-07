
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct parport {int bus_dev; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_6__ {int cntlstat; } ;
struct TYPE_7__ {TYPE_1__ parport; } ;
struct TYPE_8__ {TYPE_2__ ctrl; } ;
struct TYPE_10__ {TYPE_3__ perif; } ;
struct TYPE_9__ {int irq_on; int dir; int buf; size_t len; int next; size_t left; scalar_t__ ctx; } ;


 int BUG_ON (int) ;
 int DMA_TO_DEVICE ;
 int MACEISA_PAR_CTXA_IRQ ;
 int MACEISA_PAR_CTXB_IRQ ;
 int MACEPAR_CONTEXT_DATA_BOUND ;
 int MACEPAR_CTLSTAT_DIRECTION ;
 int MACEPAR_CTLSTAT_ENABLE ;
 int MACEPAR_CTLSTAT_RESET ;
 int WARN_ON (int) ;
 int dma_map_single (int *,void*,size_t,int) ;
 int enable_irq (int ) ;
 TYPE_5__* mace ;
 TYPE_4__ parport_ip32_dma ;
 int parport_ip32_dma_setup_context (int) ;
 int pr_trace (int *,char*,int,unsigned long) ;
 int writeq (int ,int *) ;

__attribute__((used)) static int parport_ip32_dma_start(struct parport *p,
  enum dma_data_direction dir, void *addr, size_t count)
{
 unsigned int limit;
 u64 ctrl;

 pr_trace(((void*)0), "(%d, %lu)", dir, (unsigned long)count);



 BUG_ON(dir != DMA_TO_DEVICE);


 ctrl = MACEPAR_CTLSTAT_RESET;
 writeq(ctrl, &mace->perif.ctrl.parport.cntlstat);


 if (!parport_ip32_dma.irq_on) {
  WARN_ON(1);
  enable_irq(MACEISA_PAR_CTXA_IRQ);
  enable_irq(MACEISA_PAR_CTXB_IRQ);
  parport_ip32_dma.irq_on = 1;
 }


 parport_ip32_dma.dir = dir;
 parport_ip32_dma.buf = dma_map_single(&p->bus_dev, addr, count, dir);
 parport_ip32_dma.len = count;
 parport_ip32_dma.next = parport_ip32_dma.buf;
 parport_ip32_dma.left = parport_ip32_dma.len;
 parport_ip32_dma.ctx = 0;


 ctrl = (dir == DMA_TO_DEVICE) ? 0 : MACEPAR_CTLSTAT_DIRECTION;
 writeq(ctrl, &mace->perif.ctrl.parport.cntlstat);

 limit = MACEPAR_CONTEXT_DATA_BOUND -
  (parport_ip32_dma.next & (MACEPAR_CONTEXT_DATA_BOUND - 1));
 parport_ip32_dma_setup_context(limit);
 parport_ip32_dma_setup_context(MACEPAR_CONTEXT_DATA_BOUND);


 ctrl |= MACEPAR_CTLSTAT_ENABLE;
 writeq(ctrl, &mace->perif.ctrl.parport.cntlstat);

 return 0;
}
