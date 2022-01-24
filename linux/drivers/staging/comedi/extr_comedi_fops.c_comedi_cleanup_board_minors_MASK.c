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
 unsigned int COMEDI_NUM_BOARD_MINORS ; 
 struct comedi_device* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct comedi_device *dev;
	unsigned int i;

	for (i = 0; i < COMEDI_NUM_BOARD_MINORS; i++) {
		dev = FUNC0(i);
		FUNC1(dev);
	}
}