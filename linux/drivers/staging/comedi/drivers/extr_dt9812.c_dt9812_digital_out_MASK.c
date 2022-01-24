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
struct dt9812_private {int /*<<< orphan*/  mut; } ;
struct comedi_device {struct dt9812_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  F020_SFR_P2 ; 
 int FUNC0 (struct comedi_device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, u8 bits)
{
	struct dt9812_private *devpriv = dev->private;
	u8 reg[1] = { F020_SFR_P2 };
	u8 value[1] = { bits };
	int ret;

	FUNC1(&devpriv->mut);
	ret = FUNC0(dev, 1, reg, value);
	FUNC2(&devpriv->mut);

	return ret;
}