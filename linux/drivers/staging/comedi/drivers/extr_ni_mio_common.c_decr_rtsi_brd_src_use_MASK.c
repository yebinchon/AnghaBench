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
struct ni_private {scalar_t__* rtsi_shared_mux_usage; int /*<<< orphan*/  routing_tables; } ;
struct comedi_device {struct ni_private* private; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int const,struct comedi_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int const,int /*<<< orphan*/ ,struct comedi_device*) ; 

__attribute__((used)) static int FUNC5(int src, int rtsi_brd,
				 struct comedi_device *dev)
{
	struct ni_private *devpriv = dev->private;
	s8 reg = FUNC3(FUNC0(src), rtsi_brd,
					  &devpriv->routing_tables);
	const int i = rtsi_brd - FUNC1(0);

	if (devpriv->rtsi_shared_mux_usage[i] > 0 &&
	    FUNC2(i, dev) == reg) {
		--devpriv->rtsi_shared_mux_usage[i];
		if (!devpriv->rtsi_shared_mux_usage[i])
			FUNC4(i, 0, dev); /* ok default? */
		return 0;
	}

	return -EINVAL;
}