
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pic32_spi {int xfer_done; TYPE_2__* master; int tx_irq; int rx_irq; int fault_irq; } ;
struct TYPE_4__ {TYPE_1__* cur_msg; int dev; } ;
struct TYPE_3__ {int status; } ;


 int EIO ;
 int complete (int *) ;
 int dev_err (int *,char*,char const*) ;
 int disable_irq_nosync (int ) ;

__attribute__((used)) static void pic32_err_stop(struct pic32_spi *pic32s, const char *msg)
{

 disable_irq_nosync(pic32s->fault_irq);
 disable_irq_nosync(pic32s->rx_irq);
 disable_irq_nosync(pic32s->tx_irq);


 dev_err(&pic32s->master->dev, "%s\n", msg);
 if (pic32s->master->cur_msg)
  pic32s->master->cur_msg->status = -EIO;
 complete(&pic32s->xfer_done);
}
