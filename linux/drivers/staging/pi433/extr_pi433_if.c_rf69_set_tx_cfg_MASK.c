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
struct pi433_tx_cfg {scalar_t__ enable_preamble; scalar_t__ enable_sync; scalar_t__ enable_length_byte; scalar_t__ enable_crc; int /*<<< orphan*/  sync_pattern; int /*<<< orphan*/  sync_length; int /*<<< orphan*/  preamble_length; int /*<<< orphan*/  tx_start_condition; int /*<<< orphan*/  mod_shaping; int /*<<< orphan*/  pa_ramp; int /*<<< orphan*/  dev_frequency; int /*<<< orphan*/  modulation; int /*<<< orphan*/  bit_rate; int /*<<< orphan*/  frequency; } ;
struct pi433_device {int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 scalar_t__ OPTION_ON ; 
 int /*<<< orphan*/  packet_length_fix ; 
 int /*<<< orphan*/  packet_length_var ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct pi433_device *dev, struct pi433_tx_cfg *tx_cfg)
{
	int ret;

	ret = FUNC6(dev->spi, tx_cfg->frequency);
	if (ret < 0)
		return ret;
	ret = FUNC4(dev->spi, tx_cfg->bit_rate);
	if (ret < 0)
		return ret;
	ret = FUNC7(dev->spi, tx_cfg->modulation);
	if (ret < 0)
		return ret;
	ret = FUNC5(dev->spi, tx_cfg->dev_frequency);
	if (ret < 0)
		return ret;
	ret = FUNC9(dev->spi, tx_cfg->pa_ramp);
	if (ret < 0)
		return ret;
	ret = FUNC8(dev->spi, tx_cfg->mod_shaping);
	if (ret < 0)
		return ret;
	ret = FUNC14(dev->spi, tx_cfg->tx_start_condition);
	if (ret < 0)
		return ret;

	/* packet format enable */
	if (tx_cfg->enable_preamble == OPTION_ON) {
		ret = FUNC11(dev->spi,
					       tx_cfg->preamble_length);
		if (ret < 0)
			return ret;
	} else {
		ret = FUNC11(dev->spi, 0);
		if (ret < 0)
			return ret;
	}

	if (tx_cfg->enable_sync == OPTION_ON) {
		ret = FUNC12(dev->spi, tx_cfg->sync_length);
		if (ret < 0)
			return ret;
		ret = FUNC13(dev->spi, tx_cfg->sync_pattern);
		if (ret < 0)
			return ret;
		ret = FUNC3(dev->spi);
		if (ret < 0)
			return ret;
	} else {
		ret = FUNC1(dev->spi);
		if (ret < 0)
			return ret;
	}

	if (tx_cfg->enable_length_byte == OPTION_ON) {
		ret = FUNC10(dev->spi, packet_length_var);
		if (ret < 0)
			return ret;
	} else {
		ret = FUNC10(dev->spi, packet_length_fix);
		if (ret < 0)
			return ret;
	}

	if (tx_cfg->enable_crc == OPTION_ON) {
		ret = FUNC2(dev->spi);
		if (ret < 0)
			return ret;
	} else {
		ret = FUNC0(dev->spi);
		if (ret < 0)
			return ret;
	}

	return 0;
}