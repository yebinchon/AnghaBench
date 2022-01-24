#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct spi_transfer {int bits_per_word; scalar_t__ speed_hz; int len; scalar_t__ rx_buf; scalar_t__ tx_buf; } ;
struct spi_master {int dummy; } ;
struct geni_se {scalar_t__ base; } ;
struct spi_geni_master {int cur_bits_per_word; scalar_t__ cur_speed_hz; int tx_rem_bytes; int rx_rem_bytes; int tx_wm; int /*<<< orphan*/  cur_mcmd; struct spi_transfer* cur_xfer; int /*<<< orphan*/  dev; struct geni_se se; } ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 unsigned int CLK_DIV_SHFT ; 
 unsigned int CLK_SEL_MSK ; 
 int /*<<< orphan*/  CMD_XFER ; 
 int CS_TOGGLE ; 
 int /*<<< orphan*/  FRAGMENTATION ; 
 scalar_t__ GENI_SER_M_CLK_CFG ; 
 int MIN_WORD_LEN ; 
 unsigned int SER_CLK_EN ; 
 scalar_t__ SE_GENI_CLK_SEL ; 
 scalar_t__ SE_GENI_TX_WATERMARK_REG ; 
 scalar_t__ SE_SPI_RX_TRANS_LEN ; 
 scalar_t__ SE_SPI_TRANS_CFG ; 
 scalar_t__ SE_SPI_TX_TRANS_LEN ; 
 int SPI_FULL_DUPLEX ; 
 int SPI_RX_ONLY ; 
 int SPI_TX_ONLY ; 
 int TRANS_LEN_MSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct geni_se*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,struct spi_geni_master*,unsigned int*,unsigned int*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_geni_master*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct spi_transfer *xfer,
				struct spi_geni_master *mas,
				u16 mode, struct spi_master *spi)
{
	u32 m_cmd = 0;
	u32 spi_tx_cfg, len;
	struct geni_se *se = &mas->se;

	spi_tx_cfg = FUNC3(se->base + SE_SPI_TRANS_CFG);
	if (xfer->bits_per_word != mas->cur_bits_per_word) {
		FUNC4(mas, mode, xfer->bits_per_word);
		mas->cur_bits_per_word = xfer->bits_per_word;
	}

	/* Speed and bits per word can be overridden per transfer */
	if (xfer->speed_hz != mas->cur_speed_hz) {
		int ret;
		u32 clk_sel, m_clk_cfg;
		unsigned int idx, div;

		ret = FUNC2(xfer->speed_hz, mas, &idx, &div);
		if (ret) {
			FUNC0(mas->dev, "Err setting clks:%d\n", ret);
			return;
		}
		/*
		 * SPI core clock gets configured with the requested frequency
		 * or the frequency closer to the requested frequency.
		 * For that reason requested frequency is stored in the
		 * cur_speed_hz and referred in the consecutive transfer instead
		 * of calling clk_get_rate() API.
		 */
		mas->cur_speed_hz = xfer->speed_hz;
		clk_sel = idx & CLK_SEL_MSK;
		m_clk_cfg = (div << CLK_DIV_SHFT) | SER_CLK_EN;
		FUNC5(clk_sel, se->base + SE_GENI_CLK_SEL);
		FUNC5(m_clk_cfg, se->base + GENI_SER_M_CLK_CFG);
	}

	mas->tx_rem_bytes = 0;
	mas->rx_rem_bytes = 0;
	if (xfer->tx_buf && xfer->rx_buf)
		m_cmd = SPI_FULL_DUPLEX;
	else if (xfer->tx_buf)
		m_cmd = SPI_TX_ONLY;
	else if (xfer->rx_buf)
		m_cmd = SPI_RX_ONLY;

	spi_tx_cfg &= ~CS_TOGGLE;

	if (!(mas->cur_bits_per_word % MIN_WORD_LEN))
		len = xfer->len * BITS_PER_BYTE / mas->cur_bits_per_word;
	else
		len = xfer->len / (mas->cur_bits_per_word / BITS_PER_BYTE + 1);
	len &= TRANS_LEN_MSK;

	mas->cur_xfer = xfer;
	if (m_cmd & SPI_TX_ONLY) {
		mas->tx_rem_bytes = xfer->len;
		FUNC5(len, se->base + SE_SPI_TX_TRANS_LEN);
	}

	if (m_cmd & SPI_RX_ONLY) {
		FUNC5(len, se->base + SE_SPI_RX_TRANS_LEN);
		mas->rx_rem_bytes = xfer->len;
	}
	FUNC5(spi_tx_cfg, se->base + SE_SPI_TRANS_CFG);
	mas->cur_mcmd = CMD_XFER;
	FUNC1(se, m_cmd, FRAGMENTATION);

	/*
	 * TX_WATERMARK_REG should be set after SPI configuration and
	 * setting up GENI SE engine, as driver starts data transfer
	 * for the watermark interrupt.
	 */
	if (m_cmd & SPI_TX_ONLY)
		FUNC5(mas->tx_wm, se->base + SE_GENI_TX_WATERMARK_REG);
}