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
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ LAS0_CGL_WRITE ; 
 scalar_t__ LAS0_CGT_CLEAR ; 
 scalar_t__ LAS0_CGT_ENABLE ; 
 scalar_t__ LAS0_CGT_WRITE ; 
 int FUNC0 (struct comedi_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev,
				      unsigned int n_chan, unsigned int *list)
{
	if (n_chan > 1) {	/* setup channel gain table */
		int ii;

		FUNC1(0, dev->mmio + LAS0_CGT_CLEAR);
		FUNC1(1, dev->mmio + LAS0_CGT_ENABLE);
		for (ii = 0; ii < n_chan; ii++) {
			FUNC1(FUNC0(dev, list[ii], ii),
			       dev->mmio + LAS0_CGT_WRITE);
		}
	} else {		/* just use the channel gain latch */
		FUNC1(0, dev->mmio + LAS0_CGT_ENABLE);
		FUNC1(FUNC0(dev, list[0], 0),
		       dev->mmio + LAS0_CGL_WRITE);
	}
}