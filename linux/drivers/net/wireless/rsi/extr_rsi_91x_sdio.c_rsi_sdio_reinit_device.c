
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdio_func {int dummy; } ;
struct rsi_hw {TYPE_1__* priv; struct rsi_91x_sdiodev* rsi_dev; } ;
struct rsi_91x_sdiodev {struct sdio_func* pfunction; } ;
struct TYPE_2__ {int * tx_queue; } ;


 int NUM_SOFT_QUEUES ;
 int rsi_hal_device_init (struct rsi_hw*) ;
 int rsi_handle_interrupt ;
 int rsi_init_sdio_slave_regs (struct rsi_hw*) ;
 int rsi_reset_card (struct sdio_func*) ;
 int rsi_setupcard (struct rsi_hw*) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_claim_irq (struct sdio_func*,int ) ;
 int sdio_enable_func (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_release_irq (struct sdio_func*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int rsi_sdio_reinit_device(struct rsi_hw *adapter)
{
 struct rsi_91x_sdiodev *sdev = adapter->rsi_dev;
 struct sdio_func *pfunction = sdev->pfunction;
 int ii;

 for (ii = 0; ii < NUM_SOFT_QUEUES; ii++)
  skb_queue_purge(&adapter->priv->tx_queue[ii]);


 sdio_claim_host(pfunction);

 sdio_release_irq(pfunction);
 rsi_reset_card(pfunction);

 sdio_enable_func(pfunction);
 rsi_setupcard(adapter);
 rsi_init_sdio_slave_regs(adapter);
 sdio_claim_irq(pfunction, rsi_handle_interrupt);
 rsi_hal_device_init(adapter);

 sdio_release_host(pfunction);

 return 0;
}
