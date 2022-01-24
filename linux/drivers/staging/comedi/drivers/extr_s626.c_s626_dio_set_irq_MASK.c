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
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 unsigned int S626_MISC1_EDCAP ; 
 unsigned int FUNC6 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev, unsigned int chan)
{
	unsigned int group = chan / 16;
	unsigned int mask = 1 << (chan - (16 * group));
	unsigned int status;

	/* set channel to capture positive edge */
	status = FUNC6(dev, FUNC1(group));
	FUNC7(dev, FUNC4(group), mask | status);

	/* enable interrupt on selected channel */
	status = FUNC6(dev, FUNC2(group));
	FUNC7(dev, FUNC5(group), mask | status);

	/* enable edge capture write command */
	FUNC7(dev, S626_LP_MISC1, S626_MISC1_EDCAP);

	/* enable edge capture on selected channel */
	status = FUNC6(dev, FUNC0(group));
	FUNC7(dev, FUNC3(group), mask | status);

	return 0;
}