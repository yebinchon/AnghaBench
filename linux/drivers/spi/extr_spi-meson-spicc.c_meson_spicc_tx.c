
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_spicc_device {scalar_t__ base; scalar_t__ tx_remain; } ;


 scalar_t__ SPICC_TXDATA ;
 int meson_spicc_pull_data (struct meson_spicc_device*) ;
 int meson_spicc_txfull (struct meson_spicc_device*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void meson_spicc_tx(struct meson_spicc_device *spicc)
{

 while (spicc->tx_remain &&
        !meson_spicc_txfull(spicc))
  writel_relaxed(meson_spicc_pull_data(spicc),
          spicc->base + SPICC_TXDATA);
}
