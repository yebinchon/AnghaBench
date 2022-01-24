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
struct ni_private {int rtsi_trig_direction_reg; int /*<<< orphan*/  is_m_series; } ;
struct comedi_device {struct ni_private* private; } ;

/* Variables and functions */
 int COMEDI_INPUT ; 
 int COMEDI_OUTPUT ; 
 int EINVAL ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int NISTC_RTSI_TRIG_DRV_CLK ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int NISTC_RTSI_TRIG_OLD_CLK_CHAN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, int chan)
{
	struct ni_private *devpriv = dev->private;
	unsigned int max_chan = FUNC1(devpriv->is_m_series);

	if (chan >= FUNC2(0))
		/* allow new and old names of rtsi channels to work. */
		chan -= FUNC2(0);

	if (chan < max_chan) {
		return (devpriv->rtsi_trig_direction_reg &
			FUNC0(chan, devpriv->is_m_series))
			   ? COMEDI_OUTPUT : COMEDI_INPUT;
	} else if (chan == NISTC_RTSI_TRIG_OLD_CLK_CHAN) {
		return (devpriv->rtsi_trig_direction_reg &
			NISTC_RTSI_TRIG_DRV_CLK)
			   ? COMEDI_OUTPUT : COMEDI_INPUT;
	}
	return -EINVAL;
}