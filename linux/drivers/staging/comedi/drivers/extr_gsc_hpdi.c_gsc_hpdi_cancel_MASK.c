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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ BOARD_CONTROL_REG ; 
 scalar_t__ INTERRUPT_CONTROL_REG ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
			   struct comedi_subdevice *s)
{
	FUNC1(0, dev->mmio + BOARD_CONTROL_REG);
	FUNC1(0, dev->mmio + INTERRUPT_CONTROL_REG);

	FUNC0(dev, 0);

	return 0;
}