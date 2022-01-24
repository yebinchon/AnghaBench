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
struct ni_private {unsigned int an_trig_etc_reg; } ;
struct comedi_device {struct ni_private* private; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int NISTC_ATRIG_ETC_GPFO_0_ENA ; 
 int FUNC0 (unsigned int) ; 
 unsigned int NISTC_ATRIG_ETC_GPFO_1_ENA ; 
 int FUNC1 (unsigned int) ; 

__attribute__((used)) static inline int FUNC2(unsigned int dest,
				      struct comedi_device *dev)
{
	struct ni_private *devpriv = dev->private;
	unsigned int reg = devpriv->an_trig_etc_reg;

	switch (dest) {
	case 0:
		if (reg & NISTC_ATRIG_ETC_GPFO_0_ENA)
			return FUNC0(reg);
		break;
	case 1:
		if (reg & NISTC_ATRIG_ETC_GPFO_1_ENA)
			return FUNC1(reg);
		break;
	}

	return -EINVAL;
}