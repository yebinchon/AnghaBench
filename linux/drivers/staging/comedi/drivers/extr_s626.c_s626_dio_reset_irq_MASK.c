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
 int /*<<< orphan*/  S626_LP_MISC1 ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int S626_MISC1_NOEDCAP ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev, unsigned int group,
			      unsigned int mask)
{
	/* disable edge capture write command */
	FUNC1(dev, S626_LP_MISC1, S626_MISC1_NOEDCAP);

	/* enable edge capture on selected channel */
	FUNC1(dev, FUNC0(group), mask);

	return 0;
}