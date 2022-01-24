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
struct ni_private {scalar_t__ rgout0_usage; int /*<<< orphan*/  routing_tables; } ;
struct comedi_device {struct ni_private* private; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  NI_RGOUT0 ; 
 scalar_t__ FUNC1 (struct comedi_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct comedi_device*) ; 

__attribute__((used)) static int FUNC4(int src, struct comedi_device *dev)
{
	struct ni_private *devpriv = dev->private;
	s8 reg = FUNC2(FUNC0(src), NI_RGOUT0,
					  &devpriv->routing_tables);

	if (reg < 0)
		return -EINVAL;

	if (devpriv->rgout0_usage > 0 && FUNC1(dev) != reg)
		return -EBUSY;

	++devpriv->rgout0_usage;
	FUNC3(reg, dev);
	return 0;
}