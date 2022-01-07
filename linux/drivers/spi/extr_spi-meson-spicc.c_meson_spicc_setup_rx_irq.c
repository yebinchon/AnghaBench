
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_spicc_device {scalar_t__ rx_remain; } ;


 scalar_t__ SPICC_FIFO_HALF ;
 int SPICC_RH_EN ;
 int SPICC_RR_EN ;

__attribute__((used)) static inline u32 meson_spicc_setup_rx_irq(struct meson_spicc_device *spicc,
        u32 irq_ctrl)
{
 if (spicc->rx_remain > SPICC_FIFO_HALF)
  irq_ctrl |= SPICC_RH_EN;
 else
  irq_ctrl |= SPICC_RR_EN;

 return irq_ctrl;
}
