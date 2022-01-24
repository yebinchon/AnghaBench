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
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ APCI1500_Z8536_CTRL_REG ; 
 int /*<<< orphan*/  Z8536_CFG_CTRL_REG ; 
 int Z8536_CMD_CLR_IE ; 
 int Z8536_CMD_CLR_IP_IUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  Z8536_INT_CTRL_REG ; 
 int Z8536_PAB_MODE_PMS_DISABLE ; 
 int Z8536_PAB_MODE_PTS_BIT ; 
 int Z8536_PAB_MODE_SB ; 
 int /*<<< orphan*/  Z8536_PA_CMDSTAT_REG ; 
 int /*<<< orphan*/  Z8536_PA_DD_REG ; 
 int /*<<< orphan*/  Z8536_PA_MODE_REG ; 
 int /*<<< orphan*/  Z8536_PB_CMDSTAT_REG ; 
 int /*<<< orphan*/  Z8536_PB_DD_REG ; 
 int /*<<< orphan*/  Z8536_PB_DPP_REG ; 
 int /*<<< orphan*/  Z8536_PB_MODE_REG ; 
 int /*<<< orphan*/  Z8536_PC_DD_REG ; 
 int /*<<< orphan*/  Z8536_PC_DPP_REG ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev)
{
	unsigned long flags;

	/*
	 * Even if the state of the Z8536 is not known, the following
	 * sequence will reset it and put it in State 0.
	 */
	FUNC3(&dev->spinlock, flags);
	FUNC1(dev->iobase + APCI1500_Z8536_CTRL_REG);
	FUNC2(0, dev->iobase + APCI1500_Z8536_CTRL_REG);
	FUNC1(dev->iobase + APCI1500_Z8536_CTRL_REG);
	FUNC2(0, dev->iobase + APCI1500_Z8536_CTRL_REG);
	FUNC2(1, dev->iobase + APCI1500_Z8536_CTRL_REG);
	FUNC2(0, dev->iobase + APCI1500_Z8536_CTRL_REG);
	FUNC4(&dev->spinlock, flags);

	/* Disable all Ports and Counter/Timers */
	FUNC5(dev, 0x00, Z8536_CFG_CTRL_REG);

	/*
	 * Port A is connected to Ditial Input channels 0-7.
	 * Configure the port to allow interrupt detection.
	 */
	FUNC5(dev, Z8536_PAB_MODE_PTS_BIT |
			 Z8536_PAB_MODE_SB |
			 Z8536_PAB_MODE_PMS_DISABLE,
		    Z8536_PA_MODE_REG);
	FUNC5(dev, 0xff, Z8536_PB_DPP_REG);
	FUNC5(dev, 0xff, Z8536_PA_DD_REG);

	/*
	 * Port B is connected to Ditial Input channels 8-13.
	 * Configure the port to allow interrupt detection.
	 *
	 * NOTE: Bits 7 and 6 of Port B are connected to internal
	 * diagnostic signals and bit 7 is inverted.
	 */
	FUNC5(dev, Z8536_PAB_MODE_PTS_BIT |
			 Z8536_PAB_MODE_SB |
			 Z8536_PAB_MODE_PMS_DISABLE,
		    Z8536_PB_MODE_REG);
	FUNC5(dev, 0x7f, Z8536_PB_DPP_REG);
	FUNC5(dev, 0xff, Z8536_PB_DD_REG);

	/*
	 * Not sure what Port C is connected to...
	 */
	FUNC5(dev, 0x09, Z8536_PC_DPP_REG);
	FUNC5(dev, 0x0e, Z8536_PC_DD_REG);

	/*
	 * Clear and disable all interrupt sources.
	 *
	 * Just in case, the reset of the Z8536 should have already
	 * done this.
	 */
	FUNC5(dev, Z8536_CMD_CLR_IP_IUS, Z8536_PA_CMDSTAT_REG);
	FUNC5(dev, Z8536_CMD_CLR_IE, Z8536_PA_CMDSTAT_REG);

	FUNC5(dev, Z8536_CMD_CLR_IP_IUS, Z8536_PB_CMDSTAT_REG);
	FUNC5(dev, Z8536_CMD_CLR_IE, Z8536_PB_CMDSTAT_REG);

	FUNC5(dev, Z8536_CMD_CLR_IP_IUS, FUNC0(0));
	FUNC5(dev, Z8536_CMD_CLR_IE, FUNC0(0));

	FUNC5(dev, Z8536_CMD_CLR_IP_IUS, FUNC0(1));
	FUNC5(dev, Z8536_CMD_CLR_IE, FUNC0(1));

	FUNC5(dev, Z8536_CMD_CLR_IP_IUS, FUNC0(2));
	FUNC5(dev, Z8536_CMD_CLR_IE, FUNC0(2));

	/* Disable all interrupts */
	FUNC5(dev, 0x00, Z8536_INT_CTRL_REG);
}