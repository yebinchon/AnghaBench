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
struct comedi_device {scalar_t__ mmio; int /*<<< orphan*/  class_dev; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ Firmware_Control_Register ; 
 scalar_t__ Firmware_Data_Register ; 
 scalar_t__ Firmware_Status_Register ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
			      const u8 *data, size_t data_len,
			      unsigned long context)
{
	static const int timeout = 1000;
	int fpga_index = context;
	int i;
	size_t j;

	FUNC5(0x80 | fpga_index, dev->mmio + Firmware_Control_Register);
	FUNC5(0xc0 | fpga_index, dev->mmio + Firmware_Control_Register);
	for (i = 0;
	     (FUNC2(dev->mmio + Firmware_Status_Register) & 0x2) == 0 &&
	     i < timeout; ++i) {
		FUNC4(1);
	}
	if (i == timeout) {
		FUNC0(dev->class_dev,
			 "ni_pcidio: failed to load fpga %i, waiting for status 0x2\n",
			 fpga_index);
		return -EIO;
	}
	FUNC5(0x80 | fpga_index, dev->mmio + Firmware_Control_Register);
	for (i = 0;
	     FUNC2(dev->mmio + Firmware_Status_Register) != 0x3 &&
	     i < timeout; ++i) {
		FUNC4(1);
	}
	if (i == timeout) {
		FUNC0(dev->class_dev,
			 "ni_pcidio: failed to load fpga %i, waiting for status 0x3\n",
			 fpga_index);
		return -EIO;
	}
	for (j = 0; j + 1 < data_len;) {
		unsigned int value = data[j++];

		value |= data[j++] << 8;
		FUNC5(value, dev->mmio + Firmware_Data_Register);
		for (i = 0;
		     (FUNC2(dev->mmio + Firmware_Status_Register) & 0x2) == 0
		     && i < timeout; ++i) {
			FUNC4(1);
		}
		if (i == timeout) {
			FUNC0(dev->class_dev,
				 "ni_pcidio: failed to load word into fpga %i\n",
				 fpga_index);
			return -EIO;
		}
		if (FUNC1())
			FUNC3();
	}
	FUNC5(0x0, dev->mmio + Firmware_Control_Register);
	return 0;
}