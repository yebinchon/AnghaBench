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
struct ni_private {int /*<<< orphan*/  counter_dev; int /*<<< orphan*/  routing_tables; } ;
struct comedi_device {struct ni_private* private; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_INPUT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int EINVAL ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  NI_PFI_OUTPUT_PFI_DEFAULT ; 
 scalar_t__ NI_RTSI_OUTPUT_RGOUT0 ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 int FUNC6 (unsigned int,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int,struct comedi_device*) ; 
 scalar_t__* default_rtsi_routing ; 
 unsigned int FUNC8 (unsigned int,struct comedi_device*) ; 
 scalar_t__ FUNC9 (unsigned int,struct comedi_device*) ; 
 int FUNC10 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct comedi_device*,unsigned int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct comedi_device*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC19(unsigned int src, unsigned int dest,
			    struct comedi_device *dev)
{
	struct ni_private *devpriv = dev->private;
	s8 reg = FUNC12(FUNC0(src), dest,
				      &devpriv->routing_tables);

	if (reg < 0)
		/* route is not valid */
		return -EINVAL;
	if (FUNC8(dest, dev) != src)
		/* cannot disconnect something not connected */
		return -EINVAL;

	/* The route is valid and is connected.  Now disconnect... */
	if (FUNC4(dest)) {
		/* set the pfi to high impedance, and disconnect */
		FUNC14(dev, dest, COMEDI_INPUT);
		FUNC15(dev, dest, NI_PFI_OUTPUT_PFI_DEFAULT);
	} else if (FUNC5(dest)) {
		if (reg == NI_RTSI_OUTPUT_RGOUT0) {
			int ret = FUNC6(src, dev);

			if (ret < 0)
				return ret;
		} else if (FUNC13(reg)) {
			/* find which RTSI_BRD line is source for rtsi pin */
			int brd = FUNC10(
				FUNC11(dev, dest), dest,
				&devpriv->routing_tables);

			if (brd < 0)
				return brd;

			/* decrement/disconnect RTSI_BRD line from source */
			FUNC7(src, brd, dev);
		}

		/* set rtsi output selector to default state */
		reg = default_rtsi_routing[dest - FUNC2(0)];
		FUNC16(dev, dest, COMEDI_INPUT);
		FUNC17(dev, dest, reg);
	} else if (dest >= FUNC1(0) && dest <= FUNC1(-1)) {
		/*
		 * not handled by ni_tio.  Only available for GPFO registers in
		 * e/m series.
		 */
		dest -= FUNC1(0);
		if (dest > 1)
			/* there are only two g_out outputs. */
			return -EINVAL;
		reg = FUNC9(dest, dev);
	} else if (FUNC3(dest)) {
		FUNC18(devpriv->counter_dev, dest);
	} else {
		return -EINVAL;
	}
	return 0;
}