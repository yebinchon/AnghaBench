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
typedef  int u16 ;
struct dt9812_rmw_byte {int and_mask; int or_value; int /*<<< orphan*/  address; } ;
struct dt9812_private {int /*<<< orphan*/  mut; } ;
struct comedi_device {struct dt9812_private* private; } ;

/* Variables and functions */
 void* F020_MASK_DACXCN_DACXEN ; 
 int /*<<< orphan*/  F020_SFR_DAC0CN ; 
 int /*<<< orphan*/  F020_SFR_DAC0H ; 
 int /*<<< orphan*/  F020_SFR_DAC0L ; 
 int /*<<< orphan*/  F020_SFR_DAC1CN ; 
 int /*<<< orphan*/  F020_SFR_DAC1H ; 
 int /*<<< orphan*/  F020_SFR_DAC1L ; 
 int FUNC0 (struct comedi_device*,int,struct dt9812_rmw_byte*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, int channel, u16 value)
{
	struct dt9812_private *devpriv = dev->private;
	struct dt9812_rmw_byte rmw[3];
	int ret;

	FUNC1(&devpriv->mut);

	switch (channel) {
	case 0:
		/* 1. Set DAC mode */
		rmw[0].address = F020_SFR_DAC0CN;
		rmw[0].and_mask = 0xff;
		rmw[0].or_value = F020_MASK_DACXCN_DACXEN;

		/* 2. load lsb of DAC value first */
		rmw[1].address = F020_SFR_DAC0L;
		rmw[1].and_mask = 0xff;
		rmw[1].or_value = value & 0xff;

		/* 3. load msb of DAC value next to latch the 12-bit value */
		rmw[2].address = F020_SFR_DAC0H;
		rmw[2].and_mask = 0xff;
		rmw[2].or_value = (value >> 8) & 0xf;
		break;

	case 1:
		/* 1. Set DAC mode */
		rmw[0].address = F020_SFR_DAC1CN;
		rmw[0].and_mask = 0xff;
		rmw[0].or_value = F020_MASK_DACXCN_DACXEN;

		/* 2. load lsb of DAC value first */
		rmw[1].address = F020_SFR_DAC1L;
		rmw[1].and_mask = 0xff;
		rmw[1].or_value = value & 0xff;

		/* 3. load msb of DAC value next to latch the 12-bit value */
		rmw[2].address = F020_SFR_DAC1H;
		rmw[2].and_mask = 0xff;
		rmw[2].or_value = (value >> 8) & 0xf;
		break;
	}
	ret = FUNC0(dev, 3, rmw);

	FUNC2(&devpriv->mut);

	return ret;
}