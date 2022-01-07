
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int cs_change; scalar_t__ rx_buf; scalar_t__ tx_buf; } ;
struct meson_spifc {int regmap; } ;


 int CMD_USER ;
 int REG_CMD ;
 int REG_SLAVE ;
 int REG_USER ;
 int REG_USER1 ;
 int REG_USER4 ;
 int SLAVE_TRST_DONE ;
 int USER1_BN_UC_DOUT_SHIFT ;
 int USER4_CS_ACT ;
 int USER_DIN_EN_MS ;
 int USER_UC_DOUT_SEL ;
 int USER_UC_MASK ;
 int meson_spifc_drain_buffer (struct meson_spifc*,scalar_t__,int) ;
 int meson_spifc_fill_buffer (struct meson_spifc*,scalar_t__,int) ;
 int meson_spifc_wait_ready (struct meson_spifc*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int meson_spifc_txrx(struct meson_spifc *spifc,
       struct spi_transfer *xfer,
       int offset, int len, bool last_xfer,
       bool last_chunk)
{
 bool keep_cs = 1;
 int ret;

 if (xfer->tx_buf)
  meson_spifc_fill_buffer(spifc, xfer->tx_buf + offset, len);


 regmap_update_bits(spifc->regmap, REG_USER, USER_UC_MASK,
      USER_UC_DOUT_SEL);
 regmap_write(spifc->regmap, REG_USER1,
       (8 * len - 1) << USER1_BN_UC_DOUT_SHIFT);


 regmap_update_bits(spifc->regmap, REG_USER, USER_DIN_EN_MS,
      USER_DIN_EN_MS);

 if (last_chunk) {
  if (last_xfer)
   keep_cs = xfer->cs_change;
  else
   keep_cs = !xfer->cs_change;
 }

 regmap_update_bits(spifc->regmap, REG_USER4, USER4_CS_ACT,
      keep_cs ? USER4_CS_ACT : 0);


 regmap_update_bits(spifc->regmap, REG_SLAVE, SLAVE_TRST_DONE, 0);

 regmap_update_bits(spifc->regmap, REG_CMD, CMD_USER, CMD_USER);

 ret = meson_spifc_wait_ready(spifc);

 if (!ret && xfer->rx_buf)
  meson_spifc_drain_buffer(spifc, xfer->rx_buf + offset, len);

 return ret;
}
