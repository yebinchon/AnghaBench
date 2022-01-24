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
struct ni_private {scalar_t__ is_625x; scalar_t__ is_6143; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct ni_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  NI6143_AI_FIFO_CTRL_REG ; 
 int /*<<< orphan*/  NI6143_AI_FIFO_STATUS_REG ; 
 int /*<<< orphan*/  NISTC_ADC_FIFO_CLR_REG ; 
 int NISTC_AI_CMD1_CONVERT_PULSE ; 
 int /*<<< orphan*/  NISTC_AI_CMD1_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct comedi_device *dev)
{
	struct ni_private *devpriv = dev->private;
	static const int timeout = 10000;
	int i;

	if (devpriv->is_6143) {
		/*  Flush the 6143 data FIFO */
		FUNC5(dev, 0x10, NI6143_AI_FIFO_CTRL_REG);
		FUNC5(dev, 0x00, NI6143_AI_FIFO_CTRL_REG);
		/*  Wait for complete */
		for (i = 0; i < timeout; i++) {
			if (!(FUNC2(dev, NI6143_AI_FIFO_STATUS_REG) & 0x10))
				break;
			FUNC6(1);
		}
		if (i == timeout)
			FUNC1(dev->class_dev, "FIFO flush timeout\n");
	} else {
		FUNC3(dev, 1, NISTC_ADC_FIFO_CLR_REG);
		if (devpriv->is_625x) {
			FUNC4(dev, 0, FUNC0(0));
			FUNC4(dev, 1, FUNC0(0));
#if 0
			/*
			 * The NI example code does 3 convert pulses for 625x
			 * boards, But that appears to be wrong in practice.
			 */
			ni_stc_writew(dev, NISTC_AI_CMD1_CONVERT_PULSE,
				      NISTC_AI_CMD1_REG);
			ni_stc_writew(dev, NISTC_AI_CMD1_CONVERT_PULSE,
				      NISTC_AI_CMD1_REG);
			ni_stc_writew(dev, NISTC_AI_CMD1_CONVERT_PULSE,
				      NISTC_AI_CMD1_REG);
#endif
		}
	}
}