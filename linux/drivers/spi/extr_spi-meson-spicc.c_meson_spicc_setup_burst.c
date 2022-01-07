
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_spicc_device {unsigned int tx_remain; unsigned int rx_remain; unsigned int bytes_per_word; int is_burst_end; int is_last_burst; scalar_t__ base; scalar_t__ xfer_remain; } ;


 int FIELD_PREP (int ,unsigned int) ;
 int SPICC_BURSTLENGTH_MASK ;
 unsigned int SPICC_BURST_MAX ;
 scalar_t__ SPICC_CONREG ;
 int meson_spicc_tx (struct meson_spicc_device*) ;
 int writel_bits_relaxed (int ,int ,scalar_t__) ;

__attribute__((used)) static inline void meson_spicc_setup_burst(struct meson_spicc_device *spicc,
        unsigned int burst_len)
{

 spicc->tx_remain = burst_len;
 spicc->rx_remain = burst_len;
 spicc->xfer_remain -= burst_len * spicc->bytes_per_word;
 spicc->is_burst_end = 0;
 if (burst_len < SPICC_BURST_MAX || !spicc->xfer_remain)
  spicc->is_last_burst = 1;
 else
  spicc->is_last_burst = 0;


 writel_bits_relaxed(SPICC_BURSTLENGTH_MASK,
   FIELD_PREP(SPICC_BURSTLENGTH_MASK,
    burst_len),
   spicc->base + SPICC_CONREG);


 meson_spicc_tx(spicc);
}
