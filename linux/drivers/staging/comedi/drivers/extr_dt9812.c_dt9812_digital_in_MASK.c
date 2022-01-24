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
struct dt9812_private {int /*<<< orphan*/  mut; } ;
struct comedi_device {struct dt9812_private* private; } ;

/* Variables and functions */
 int F020_SFR_P1 ; 
 int F020_SFR_P3 ; 
 int FUNC0 (struct comedi_device*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, u8 *bits)
{
	struct dt9812_private *devpriv = dev->private;
	u8 reg[2] = { F020_SFR_P3, F020_SFR_P1 };
	u8 value[2];
	int ret;

	FUNC1(&devpriv->mut);
	ret = FUNC0(dev, 2, reg, value);
	if (ret == 0) {
		/*
		 * bits 0-6 in F020_SFR_P3 are bits 0-6 in the digital
		 * input port bit 3 in F020_SFR_P1 is bit 7 in the
		 * digital input port
		 */
		*bits = (value[0] & 0x7f) | ((value[1] & 0x08) << 4);
	}
	FUNC2(&devpriv->mut);

	return ret;
}