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
struct pi433_rx_cfg {scalar_t__ enable_sync; scalar_t__ enable_length_byte; scalar_t__ enable_address_filtering; scalar_t__ enable_crc; int fixed_message_length; int /*<<< orphan*/  broadcast_address; int /*<<< orphan*/  node_address; int /*<<< orphan*/  sync_pattern; int /*<<< orphan*/  sync_length; int /*<<< orphan*/  bytes_to_drop; int /*<<< orphan*/  dagc; int /*<<< orphan*/  bw_exponent; int /*<<< orphan*/  bw_mantisse; int /*<<< orphan*/  threshold_decrement; int /*<<< orphan*/  rssi_threshold; int /*<<< orphan*/  antenna_impedance; int /*<<< orphan*/  modulation; int /*<<< orphan*/  bit_rate; int /*<<< orphan*/  frequency; } ;
struct pi433_device {int /*<<< orphan*/  spi; int /*<<< orphan*/  rx_bytes_to_drop; } ;

/* Variables and functions */
 scalar_t__ OPTION_ON ; 
 int /*<<< orphan*/  after_sync_interrupt ; 
 int /*<<< orphan*/  always ; 
 scalar_t__ filtering_off ; 
 int /*<<< orphan*/  packet_length_fix ; 
 int /*<<< orphan*/  packet_length_var ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(struct pi433_device *dev, struct pi433_rx_cfg *rx_cfg)
{
	int ret;
	int payload_length;

	/* receiver config */
	ret = FUNC12(dev->spi, rx_cfg->frequency);
	if (ret < 0)
		return ret;
	ret = FUNC8(dev->spi, rx_cfg->bit_rate);
	if (ret < 0)
		return ret;
	ret = FUNC13(dev->spi, rx_cfg->modulation);
	if (ret < 0)
		return ret;
	ret = FUNC5(dev->spi, rx_cfg->antenna_impedance);
	if (ret < 0)
		return ret;
	ret = FUNC18(dev->spi, rx_cfg->rssi_threshold);
	if (ret < 0)
		return ret;
	ret = FUNC15(dev->spi, rx_cfg->threshold_decrement);
	if (ret < 0)
		return ret;
	ret = FUNC6(dev->spi, rx_cfg->bw_mantisse,
				 rx_cfg->bw_exponent);
	if (ret < 0)
		return ret;
	ret = FUNC7(dev->spi, rx_cfg->bw_mantisse,
					    rx_cfg->bw_exponent);
	if (ret < 0)
		return ret;
	ret = FUNC10(dev->spi, rx_cfg->dagc);
	if (ret < 0)
		return ret;

	dev->rx_bytes_to_drop = rx_cfg->bytes_to_drop;

	/* packet config */
	/* enable */
	if (rx_cfg->enable_sync == OPTION_ON) {
		ret = FUNC3(dev->spi);
		if (ret < 0)
			return ret;

		ret = FUNC11(dev->spi,
						   after_sync_interrupt);
		if (ret < 0)
			return ret;
	} else {
		ret = FUNC1(dev->spi);
		if (ret < 0)
			return ret;

		ret = FUNC11(dev->spi, always);
		if (ret < 0)
			return ret;
	}
	if (rx_cfg->enable_length_byte == OPTION_ON) {
		ret = FUNC16(dev->spi, packet_length_var);
		if (ret < 0)
			return ret;
	} else {
		ret = FUNC16(dev->spi, packet_length_fix);
		if (ret < 0)
			return ret;
	}
	ret = FUNC4(dev->spi,
					 rx_cfg->enable_address_filtering);
	if (ret < 0)
		return ret;

	if (rx_cfg->enable_crc == OPTION_ON) {
		ret = FUNC2(dev->spi);
		if (ret < 0)
			return ret;
	} else {
		ret = FUNC0(dev->spi);
		if (ret < 0)
			return ret;
	}

	/* lengths */
	ret = FUNC19(dev->spi, rx_cfg->sync_length);
	if (ret < 0)
		return ret;
	if (rx_cfg->enable_length_byte == OPTION_ON) {
		ret = FUNC17(dev->spi, 0xff);
		if (ret < 0)
			return ret;
	} else if (rx_cfg->fixed_message_length != 0) {
		payload_length = rx_cfg->fixed_message_length;
		if (rx_cfg->enable_length_byte  == OPTION_ON)
			payload_length++;
		if (rx_cfg->enable_address_filtering != filtering_off)
			payload_length++;
		ret = FUNC17(dev->spi, payload_length);
		if (ret < 0)
			return ret;
	} else {
		ret = FUNC17(dev->spi, 0);
		if (ret < 0)
			return ret;
	}

	/* values */
	if (rx_cfg->enable_sync == OPTION_ON) {
		ret = FUNC20(dev->spi, rx_cfg->sync_pattern);
		if (ret < 0)
			return ret;
	}
	if (rx_cfg->enable_address_filtering != filtering_off) {
		ret = FUNC14(dev->spi, rx_cfg->node_address);
		if (ret < 0)
			return ret;
		ret = FUNC9(dev->spi,
						 rx_cfg->broadcast_address);
		if (ret < 0)
			return ret;
	}

	return 0;
}