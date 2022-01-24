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
typedef  int /*<<< orphan*/  u8 ;
struct spi_device {int /*<<< orphan*/  dev; } ;
typedef  enum mode { ____Placeholder_mode } mode ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MASK_OPMODE_MODE ; 
#define  OPMODE_MODE_RECEIVE 137 
#define  OPMODE_MODE_SLEEP 136 
#define  OPMODE_MODE_STANDBY 135 
#define  OPMODE_MODE_SYNTHESIZER 134 
#define  OPMODE_MODE_TRANSMIT 133 
 int /*<<< orphan*/  REG_OPMODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
#define  mode_sleep 132 
#define  receive 131 
 int FUNC2 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
#define  standby 130 
#define  synthesizer 129 
#define  transmit 128 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct spi_device *spi, enum mode mode)
{
	static const u8 mode_map[] = {
		[transmit] = OPMODE_MODE_TRANSMIT,
		[receive] = OPMODE_MODE_RECEIVE,
		[synthesizer] = OPMODE_MODE_SYNTHESIZER,
		[standby] = OPMODE_MODE_STANDBY,
		[mode_sleep] = OPMODE_MODE_SLEEP,
	};

	if (FUNC3(mode >= FUNC0(mode_map))) {
		FUNC1(&spi->dev, "set: illegal input param");
		return -EINVAL;
	}

	return FUNC2(spi, REG_OPMODE, MASK_OPMODE_MODE,
				   mode_map[mode]);

	/*
	 * we are using packet mode, so this check is not really needed
	 * but waiting for mode ready is necessary when going from sleep
	 * because the FIFO may not be immediately available from previous mode
	 * while (_mode == RF69_MODE_SLEEP && (READ_REG(REG_IRQFLAGS1) &
		  RF_IRQFLAGS1_MODEREADY) == 0x00); // Wait for ModeReady
	 */
}