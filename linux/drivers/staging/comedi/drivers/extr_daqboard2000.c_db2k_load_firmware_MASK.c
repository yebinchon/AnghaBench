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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct db2k_private {scalar_t__ plx; } ;
struct comedi_device {scalar_t__ mmio; int /*<<< orphan*/  class_dev; struct db2k_private* private; } ;

/* Variables and functions */
 int DB2K_CPLD_VERSION_MASK ; 
 int DB2K_CPLD_VERSION_NEW ; 
 scalar_t__ DB2K_REG_CPLD_STATUS ; 
 int EINVAL ; 
 int EIO ; 
 int PLX_CNTRL_EEPRESENT ; 
 scalar_t__ PLX_REG_CNTRL ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 int FUNC3 (struct comedi_device*) ; 
 int FUNC4 (struct comedi_device*) ; 
 int FUNC5 (struct comedi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev, const u8 *cpld_array,
			      size_t len, unsigned long context)
{
	struct db2k_private *devpriv = dev->private;
	int result = -EIO;
	u32 cntrl;
	int retry;
	size_t i;
	bool new_cpld;

	/* Look for FPGA start sequence in firmware. */
	for (i = 0; i + 1 < len; i++) {
		if (cpld_array[i] == 0xff && cpld_array[i + 1] == 0x20)
			break;
	}
	if (i + 1 >= len) {
		FUNC6(dev->class_dev, "bad firmware - no start sequence\n");
		return -EINVAL;
	}
	/* Check length is even. */
	if ((len - i) & 1) {
		FUNC6(dev->class_dev,
			"bad firmware - odd length (%zu = %zu - %zu)\n",
			len - i, len, i);
		return -EINVAL;
	}
	/* Strip firmware header. */
	cpld_array += i;
	len -= i;

	/* Check to make sure the serial eeprom is present on the board */
	cntrl = FUNC7(devpriv->plx + PLX_REG_CNTRL);
	if (!(cntrl & PLX_CNTRL_EEPRESENT))
		return -EIO;

	for (retry = 0; retry < 3; retry++) {
		FUNC2(dev);
		FUNC1(dev);
		FUNC0(dev);
		result = FUNC3(dev);
		if (result)
			continue;

		new_cpld = (FUNC8(dev->mmio + DB2K_REG_CPLD_STATUS) &
			    DB2K_CPLD_VERSION_MASK) == DB2K_CPLD_VERSION_NEW;
		for (; i < len; i += 2) {
			u16 data = (cpld_array[i] << 8) + cpld_array[i + 1];

			result = FUNC5(dev, data, new_cpld);
			if (result)
				break;
		}
		if (result == 0)
			result = FUNC4(dev);
		if (result == 0) {
			FUNC2(dev);
			FUNC1(dev);
			break;
		}
	}
	return result;
}