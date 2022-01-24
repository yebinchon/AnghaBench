#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pcl812_private {int mode_reg_int; TYPE_1__* dma; scalar_t__ ai_dma; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  pacer; scalar_t__ iobase; struct pcl812_private* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int PCL812_CTRL_DISABLE_TRIG ; 
 scalar_t__ PCL812_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			    struct comedi_subdevice *s)
{
	struct pcl812_private *devpriv = dev->private;

	if (devpriv->ai_dma)
		FUNC1(devpriv->dma->chan);

	FUNC2(devpriv->mode_reg_int | PCL812_CTRL_DISABLE_TRIG,
	     dev->iobase + PCL812_CTRL_REG);
	FUNC0(dev->pacer, 1, 2, false);
	FUNC3(dev);
	return 0;
}