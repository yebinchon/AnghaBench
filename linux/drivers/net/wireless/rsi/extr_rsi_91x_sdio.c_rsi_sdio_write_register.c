
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct rsi_hw {scalar_t__ rsi_dev; } ;
struct rsi_91x_sdiodev {scalar_t__ sdio_irq_task; int pfunction; } ;


 scalar_t__ current ;
 scalar_t__ likely (int) ;
 int sdio_claim_host (int ) ;
 int sdio_f0_writeb (int ,scalar_t__,int ,int*) ;
 int sdio_release_host (int ) ;
 int sdio_writeb (int ,scalar_t__,int ,int*) ;

int rsi_sdio_write_register(struct rsi_hw *adapter,
       u8 function,
       u32 addr,
       u8 *data)
{
 struct rsi_91x_sdiodev *dev =
  (struct rsi_91x_sdiodev *)adapter->rsi_dev;
 int status = 0;

 if (likely(dev->sdio_irq_task != current))
  sdio_claim_host(dev->pfunction);

 if (function == 0)
  sdio_f0_writeb(dev->pfunction, *data, addr, &status);
 else
  sdio_writeb(dev->pfunction, *data, addr, &status);

 if (likely(dev->sdio_irq_task != current))
  sdio_release_host(dev->pfunction);

 return status;
}
