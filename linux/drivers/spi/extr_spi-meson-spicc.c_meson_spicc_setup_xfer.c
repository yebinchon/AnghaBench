
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_transfer {int speed_hz; } ;
struct meson_spicc_device {int bytes_per_word; scalar_t__ base; } ;


 int FIELD_PREP (int ,int) ;
 int SPICC_BITLENGTH_MASK ;
 scalar_t__ SPICC_CONREG ;
 int meson_spicc_setup_speed (struct meson_spicc_device*,int ,int ) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void meson_spicc_setup_xfer(struct meson_spicc_device *spicc,
       struct spi_transfer *xfer)
{
 u32 conf, conf_orig;


 conf = conf_orig = readl_relaxed(spicc->base + SPICC_CONREG);


 conf = meson_spicc_setup_speed(spicc, conf, xfer->speed_hz);


 conf &= ~SPICC_BITLENGTH_MASK;
 conf |= FIELD_PREP(SPICC_BITLENGTH_MASK,
      (spicc->bytes_per_word << 3) - 1);


 if (conf != conf_orig)
  writel_relaxed(conf, spicc->base + SPICC_CONREG);
}
