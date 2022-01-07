
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct rockchip_spi {int state; } ;


 int RXDMA ;
 int TXDMA ;
 int atomic_fetch_andnot (int ,int *) ;
 int spi_enable_chip (struct rockchip_spi*,int) ;
 int spi_finalize_current_transfer (struct spi_master*) ;
 struct rockchip_spi* spi_master_get_devdata (struct spi_master*) ;
 int wait_for_idle (struct rockchip_spi*) ;

__attribute__((used)) static void rockchip_spi_dma_txcb(void *data)
{
 struct spi_master *master = data;
 struct rockchip_spi *rs = spi_master_get_devdata(master);
 int state = atomic_fetch_andnot(TXDMA, &rs->state);

 if (state & RXDMA)
  return;


 wait_for_idle(rs);

 spi_enable_chip(rs, 0);
 spi_finalize_current_transfer(master);
}
