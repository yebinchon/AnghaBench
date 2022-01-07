
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_spicc_device {scalar_t__ base; scalar_t__ rx_remain; } ;


 scalar_t__ SPICC_RXDATA ;
 int meson_spicc_push_data (struct meson_spicc_device*,int ) ;
 scalar_t__ meson_spicc_rxready (struct meson_spicc_device*) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline void meson_spicc_rx(struct meson_spicc_device *spicc)
{

 while (spicc->rx_remain &&
        meson_spicc_rxready(spicc))
  meson_spicc_push_data(spicc,
    readl_relaxed(spicc->base + SPICC_RXDATA));
}
