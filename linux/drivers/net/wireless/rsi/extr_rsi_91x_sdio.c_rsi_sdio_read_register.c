
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
 scalar_t__ sdio_f0_readb (int ,int ,int*) ;
 scalar_t__ sdio_readb (int ,int ,int*) ;
 int sdio_release_host (int ) ;

int rsi_sdio_read_register(struct rsi_hw *adapter,
      u32 addr,
      u8 *data)
{
 struct rsi_91x_sdiodev *dev =
  (struct rsi_91x_sdiodev *)adapter->rsi_dev;
 u8 fun_num = 0;
 int status;

 if (likely(dev->sdio_irq_task != current))
  sdio_claim_host(dev->pfunction);

 if (fun_num == 0)
  *data = sdio_f0_readb(dev->pfunction, addr, &status);
 else
  *data = sdio_readb(dev->pfunction, addr, &status);

 if (likely(dev->sdio_irq_task != current))
  sdio_release_host(dev->pfunction);

 return status;
}
