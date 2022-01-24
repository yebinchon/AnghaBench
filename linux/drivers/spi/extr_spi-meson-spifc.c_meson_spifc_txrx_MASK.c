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
struct spi_transfer {int cs_change; scalar_t__ rx_buf; scalar_t__ tx_buf; } ;
struct meson_spifc {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_USER ; 
 int /*<<< orphan*/  REG_CMD ; 
 int /*<<< orphan*/  REG_SLAVE ; 
 int /*<<< orphan*/  REG_USER ; 
 int /*<<< orphan*/  REG_USER1 ; 
 int /*<<< orphan*/  REG_USER4 ; 
 int /*<<< orphan*/  SLAVE_TRST_DONE ; 
 int USER1_BN_UC_DOUT_SHIFT ; 
 int /*<<< orphan*/  USER4_CS_ACT ; 
 int /*<<< orphan*/  USER_DIN_EN_MS ; 
 int /*<<< orphan*/  USER_UC_DOUT_SEL ; 
 int /*<<< orphan*/  USER_UC_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct meson_spifc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct meson_spifc*,scalar_t__,int) ; 
 int FUNC2 (struct meson_spifc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct meson_spifc *spifc,
			    struct spi_transfer *xfer,
			    int offset, int len, bool last_xfer,
			    bool last_chunk)
{
	bool keep_cs = true;
	int ret;

	if (xfer->tx_buf)
		FUNC1(spifc, xfer->tx_buf + offset, len);

	/* enable DOUT stage */
	FUNC3(spifc->regmap, REG_USER, USER_UC_MASK,
			   USER_UC_DOUT_SEL);
	FUNC4(spifc->regmap, REG_USER1,
		     (8 * len - 1) << USER1_BN_UC_DOUT_SHIFT);

	/* enable data input during DOUT */
	FUNC3(spifc->regmap, REG_USER, USER_DIN_EN_MS,
			   USER_DIN_EN_MS);

	if (last_chunk) {
		if (last_xfer)
			keep_cs = xfer->cs_change;
		else
			keep_cs = !xfer->cs_change;
	}

	FUNC3(spifc->regmap, REG_USER4, USER4_CS_ACT,
			   keep_cs ? USER4_CS_ACT : 0);

	/* clear transition done bit */
	FUNC3(spifc->regmap, REG_SLAVE, SLAVE_TRST_DONE, 0);
	/* start transfer */
	FUNC3(spifc->regmap, REG_CMD, CMD_USER, CMD_USER);

	ret = FUNC2(spifc);

	if (!ret && xfer->rx_buf)
		FUNC0(spifc, xfer->rx_buf + offset, len);

	return ret;
}