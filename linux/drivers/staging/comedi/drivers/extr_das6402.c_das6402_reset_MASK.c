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
struct das6402_private {int ao_range; } ;
struct comedi_device {scalar_t__ iobase; struct das6402_private* private; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAS6402_AI_MUX_REG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 scalar_t__ DAS6402_CTRL_REG ; 
 int DAS6402_CTRL_SOFT_TRIG ; 
 scalar_t__ DAS6402_DI_DO_REG ; 
 int DAS6402_MODE_ENHANCED ; 
 int DAS6402_MODE_POLLED ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAS6402_MODE_REG ; 
 int DAS6402_MODE_SE ; 
 int DAS6402_MODE_UNI ; 
 int /*<<< orphan*/  DAS6402_STATUS_W_10MHZ ; 
 scalar_t__ DAS6402_TRIG_REG ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct comedi_device *dev)
{
	struct das6402_private *devpriv = dev->private;

	/* enable "Enhanced" mode */
	FUNC10(DAS6402_MODE_ENHANCED, dev->iobase + DAS6402_MODE_REG);

	/* enable 10MHz pacer clock */
	FUNC7(dev, DAS6402_STATUS_W_10MHZ);

	/* enable software conversion trigger */
	FUNC10(DAS6402_CTRL_SOFT_TRIG, dev->iobase + DAS6402_CTRL_REG);

	/* default ADC to single-ended unipolar 10V inputs */
	FUNC8(dev, FUNC5(0) |
			      DAS6402_MODE_POLLED |
			      DAS6402_MODE_SE |
			      DAS6402_MODE_UNI);

	/* default mux for single channel conversion (channel 0) */
	FUNC11(FUNC0(0) | FUNC1(0),
	     dev->iobase + DAS6402_AI_MUX_REG);

	/* set both DAC's for unipolar 5V output range */
	devpriv->ao_range = FUNC4(0, 2) | FUNC4(1, 2);
	FUNC10(devpriv->ao_range, dev->iobase + DAS6402_TRIG_REG);

	/* set both DAC's to 0V */
	FUNC11(0, dev->iobase + FUNC2(0));
	FUNC11(0, dev->iobase + FUNC2(0));
	FUNC9(dev->iobase + FUNC3(0));

	/* set all digital outputs low */
	FUNC10(0, dev->iobase + DAS6402_DI_DO_REG);

	FUNC6(dev);
}