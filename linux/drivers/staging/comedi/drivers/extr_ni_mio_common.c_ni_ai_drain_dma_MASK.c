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
struct ni_private {int /*<<< orphan*/  mite_channel_lock; scalar_t__ ai_mite_chan; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct ni_private* private; } ;

/* Variables and functions */
 int NISTC_AI_STATUS1_FIFO_E ; 
 int /*<<< orphan*/  NISTC_AI_STATUS1_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev)
{
	struct ni_private *devpriv = dev->private;
	int i;
	static const int timeout = 10000;
	unsigned long flags;
	int retval = 0;

	FUNC4(&devpriv->mite_channel_lock, flags);
	if (devpriv->ai_mite_chan) {
		for (i = 0; i < timeout; i++) {
			if ((FUNC2(dev, NISTC_AI_STATUS1_REG) &
			     NISTC_AI_STATUS1_FIFO_E) &&
			    FUNC1(devpriv->ai_mite_chan) == 0)
				break;
			FUNC6(5);
		}
		if (i == timeout) {
			FUNC0(dev->class_dev, "timed out\n");
			FUNC0(dev->class_dev,
				"mite_bytes_in_transit=%i, AI_Status1_Register=0x%x\n",
				FUNC1(devpriv->ai_mite_chan),
				FUNC2(dev, NISTC_AI_STATUS1_REG));
			retval = -1;
		}
	}
	FUNC5(&devpriv->mite_channel_lock, flags);

	FUNC3(dev);

	return retval;
}