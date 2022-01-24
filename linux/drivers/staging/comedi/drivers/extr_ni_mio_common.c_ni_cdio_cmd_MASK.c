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
struct ni_private {int /*<<< orphan*/  cdo_mite_ring; int /*<<< orphan*/  routing_tables; } ;
struct comedi_subdevice {int io_bits; unsigned int state; TYPE_1__* async; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct ni_private* private; } ;
struct comedi_cmd {int scan_begin_arg; } ;
struct TYPE_2__ {int prealloc_bufsz; int /*<<< orphan*/  inttrig; struct comedi_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CR_INVERT ; 
 int EIO ; 
 int /*<<< orphan*/  NI_DO_SampleClock ; 
 int /*<<< orphan*/  NI_M_CDIO_CMD_REG ; 
 unsigned int NI_M_CDO_CMD_RESET ; 
 unsigned int NI_M_CDO_CMD_SW_UPDATE ; 
 int /*<<< orphan*/  NI_M_CDO_FIFO_DATA_REG ; 
 int /*<<< orphan*/  NI_M_CDO_MASK_ENA_REG ; 
 unsigned int NI_M_CDO_MODE_FIFO_MODE ; 
 unsigned int NI_M_CDO_MODE_HALT_ON_ERROR ; 
 unsigned int NI_M_CDO_MODE_POLARITY ; 
 int /*<<< orphan*/  NI_M_CDO_MODE_REG ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ni_cdo_inttrig ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct comedi_subdevice*,struct comedi_cmd const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct ni_private *devpriv = dev->private;
	const struct comedi_cmd *cmd = &s->async->cmd;
	unsigned int cdo_mode_bits;
	int retval;

	FUNC7(dev, NI_M_CDO_CMD_RESET, NI_M_CDIO_CMD_REG);
	/*
	 * Although NI_D[IO]_SampleClock are the same, perhaps we should still,
	 * for completeness, test whether the cmd is output or input(?)
	 */
	cdo_mode_bits = NI_M_CDO_MODE_FIFO_MODE |
			NI_M_CDO_MODE_HALT_ON_ERROR |
			FUNC1(
				FUNC5(FUNC0(cmd->scan_begin_arg),
						 NI_DO_SampleClock,
						 &devpriv->routing_tables));
	if (cmd->scan_begin_arg & CR_INVERT)
		cdo_mode_bits |= NI_M_CDO_MODE_POLARITY;
	FUNC7(dev, cdo_mode_bits, NI_M_CDO_MODE_REG);
	if (s->io_bits) {
		FUNC7(dev, s->state, NI_M_CDO_FIFO_DATA_REG);
		FUNC7(dev, NI_M_CDO_CMD_SW_UPDATE, NI_M_CDIO_CMD_REG);
		FUNC7(dev, s->io_bits, NI_M_CDO_MASK_ENA_REG);
	} else {
		FUNC3(dev->class_dev,
			"attempted to run digital output command with no lines configured as outputs\n");
		return -EIO;
	}
	retval = FUNC6(dev);
	if (retval < 0)
		return retval;

	FUNC4(devpriv->cdo_mite_ring, s, cmd,
				 s->async->prealloc_bufsz /
				 FUNC2(s));

	s->async->inttrig = ni_cdo_inttrig;

	return 0;
}