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
typedef  size_t u8 ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * s626_trimadrs ; 
 int /*<<< orphan*/  s626_trimchan ; 
 int FUNC2 (struct comedi_device*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev)
{
	u8 i;
	int ret;

	/* Copy TrimDac setpoint values from EEPROM to TrimDacs. */
	for (i = 0; i < FUNC0(s626_trimchan); i++) {
		ret = FUNC2(dev, i,
					  FUNC1(dev, s626_trimadrs[i]));
		if (ret)
			return ret;
	}
	return 0;
}