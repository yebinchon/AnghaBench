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
struct comedi_device {struct apci3501_private* private; } ;
struct apci3501_private {int /*<<< orphan*/  amcc; } ;

/* Variables and functions */
 unsigned char EEPROM_ANALOGOUTPUT ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static int FUNC1(struct comedi_device *dev)
{
	struct apci3501_private *devpriv = dev->private;
	unsigned char nfuncs;
	int i;

	nfuncs = FUNC0(devpriv->amcc, 10) & 0xff;

	/* Read functionality details */
	for (i = 0; i < nfuncs; i++) {
		unsigned short offset = i * 4;
		unsigned short addr;
		unsigned char func;
		unsigned short val;

		func = FUNC0(devpriv->amcc, 12 + offset) & 0x3f;
		addr = FUNC0(devpriv->amcc, 14 + offset);

		if (func == EEPROM_ANALOGOUTPUT) {
			val = FUNC0(devpriv->amcc, addr + 10);
			return (val >> 4) & 0x3ff;
		}
	}
	return 0;
}