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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 unsigned int COMEDI_OUTPUT ; 
 int /*<<< orphan*/  NISTC_IO_BIDIR_PIN_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev, int chan,
				 unsigned int direction)
{
	if (chan >= FUNC0(0)) {
		/* allow new and old names of pfi channels to work. */
		chan -= FUNC0(0);
	}
	direction = (direction == COMEDI_OUTPUT) ? 1u : 0u;
	FUNC1(dev, NISTC_IO_BIDIR_PIN_REG, 1 << chan, direction);
}