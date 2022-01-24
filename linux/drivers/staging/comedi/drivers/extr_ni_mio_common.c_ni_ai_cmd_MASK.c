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
struct ni_private {int an_trig_etc_reg; int ai_cmd2; int aimode; int /*<<< orphan*/  routing_tables; scalar_t__ is_611x; scalar_t__ is_6143; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ irq; int /*<<< orphan*/  class_dev; struct ni_private* private; } ;
struct comedi_cmd {int chanlist_len; int start_src; int start_arg; int stop_src; int scan_begin_src; int scan_begin_arg; int convert_src; int convert_arg; int flags; int /*<<< orphan*/  stop_arg; int /*<<< orphan*/  chanlist; } ;
struct TYPE_2__ {int /*<<< orphan*/ * inttrig; struct comedi_cmd cmd; } ;

/* Variables and functions */
#define  AIMODE_HALF_FULL 136 
#define  AIMODE_SAMPLE 135 
#define  AIMODE_SCAN 134 
 int /*<<< orphan*/  CMDF_ROUND_NEAREST ; 
 int CMDF_WAKE_EOS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CR_EDGE ; 
 int CR_INVERT ; 
 int EIO ; 
 int NISTC_AI_CMD1_DIV_ARM ; 
 int /*<<< orphan*/  NISTC_AI_CMD1_REG ; 
 int NISTC_AI_CMD1_SC_ARM ; 
 int NISTC_AI_CMD1_SC_LOAD ; 
 int NISTC_AI_CMD1_SI2_ARM ; 
 int NISTC_AI_CMD1_SI2_LOAD ; 
 int NISTC_AI_CMD1_SI_ARM ; 
 int NISTC_AI_CMD1_SI_LOAD ; 
 int NISTC_AI_CMD2_END_ON_EOS ; 
 int /*<<< orphan*/  NISTC_AI_CMD2_REG ; 
 int NISTC_AI_CMD2_START1_PULSE ; 
 int NISTC_AI_MODE1_CONTINUOUS ; 
 int NISTC_AI_MODE1_CONVERT_POLARITY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NISTC_AI_MODE1_REG ; 
 int NISTC_AI_MODE1_RSVD ; 
 int NISTC_AI_MODE1_START_STOP ; 
 int NISTC_AI_MODE1_TRIGGER_ONCE ; 
 int NISTC_AI_MODE2_PRE_TRIGGER ; 
 int /*<<< orphan*/  NISTC_AI_MODE2_REG ; 
 int NISTC_AI_MODE2_SC_GATE_ENA ; 
 int NISTC_AI_MODE2_SC_INIT_LOAD_SRC ; 
 int NISTC_AI_MODE2_SC_RELOAD_MODE ; 
 int NISTC_AI_MODE2_SI2_INIT_LOAD_SRC ; 
 int NISTC_AI_MODE2_SI2_RELOAD_MODE ; 
 int NISTC_AI_MODE2_SI_INIT_LOAD_SRC ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int NISTC_AI_MODE2_START_STOP_GATE_ENA ; 
 int NISTC_AI_MODE3_FIFO_MODE_HF ; 
 int NISTC_AI_MODE3_FIFO_MODE_HF_E ; 
 int NISTC_AI_MODE3_FIFO_MODE_NE ; 
 int /*<<< orphan*/  NISTC_AI_MODE3_REG ; 
 int /*<<< orphan*/  NISTC_AI_SC_LOADA_REG ; 
 int /*<<< orphan*/  NISTC_AI_SI2_LOADA_REG ; 
 int /*<<< orphan*/  NISTC_AI_SI2_LOADB_REG ; 
 int /*<<< orphan*/  NISTC_AI_SI_LOADA_REG ; 
 int NISTC_AI_START_EDGE ; 
 int NISTC_AI_START_POLARITY ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NISTC_AI_START_STOP_REG ; 
 int NISTC_AI_START_SYNC ; 
 int NISTC_AI_STOP_EDGE ; 
 int NISTC_AI_STOP_POLARITY ; 
 int FUNC4 (int) ; 
 int NISTC_AI_STOP_SYNC ; 
 int /*<<< orphan*/  NISTC_AI_TRIG_SEL_REG ; 
 unsigned int NISTC_AI_TRIG_START1_EDGE ; 
 unsigned int NISTC_AI_TRIG_START1_POLARITY ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int NISTC_AI_TRIG_START1_SYNC ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int NISTC_ATRIG_ETC_ENA ; 
 int /*<<< orphan*/  NISTC_ATRIG_ETC_REG ; 
 int NISTC_INTA_ACK_AI_ALL ; 
 int /*<<< orphan*/  NISTC_INTA_ACK_REG ; 
 int NISTC_INTA_ENA_AI_ERR ; 
 int NISTC_INTA_ENA_AI_FIFO ; 
 int NISTC_INTA_ENA_AI_SC_TC ; 
 int NISTC_INTA_ENA_AI_STOP ; 
 int /*<<< orphan*/  NISTC_INTA_ENA_REG ; 
 int NISTC_RESET_AI_CFG_END ; 
 int NISTC_RESET_AI_CFG_START ; 
 int /*<<< orphan*/  NISTC_RESET_REG ; 
 int /*<<< orphan*/  NI_AI_ConvertClock ; 
 int /*<<< orphan*/  NI_AI_SampleClock ; 
 int /*<<< orphan*/  NI_AI_StartTrigger ; 
#define  TRIG_COUNT 133 
#define  TRIG_EXT 132 
#define  TRIG_INT 131 
#define  TRIG_NONE 130 
#define  TRIG_NOW 129 
#define  TRIG_TIMER 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * ni_ai_inttrig ; 
 int FUNC8 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct comedi_device*,struct comedi_subdevice*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct comedi_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 unsigned int num_adc_stages_611x ; 

__attribute__((used)) static int FUNC16(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct ni_private *devpriv = dev->private;
	const struct comedi_cmd *cmd = &s->async->cmd;
	int timer;
	int mode1 = 0;		/* mode1 is needed for both stop and convert */
	int mode2 = 0;
	int start_stop_select = 0;
	unsigned int stop_count;
	int interrupt_a_enable = 0;
	unsigned int ai_trig;

	if (dev->irq == 0) {
		FUNC7(dev->class_dev, "cannot run command without an irq\n");
		return -EIO;
	}
	FUNC9(dev);

	FUNC11(dev, s, cmd->chanlist_len, cmd->chanlist);

	/* start configuration */
	FUNC15(dev, NISTC_RESET_AI_CFG_START, NISTC_RESET_REG);

	/*
	 * Disable analog triggering for now, since it interferes
	 * with the use of pfi0.
	 */
	devpriv->an_trig_etc_reg &= ~NISTC_ATRIG_ETC_ENA;
	FUNC15(dev, devpriv->an_trig_etc_reg, NISTC_ATRIG_ETC_REG);

	ai_trig = FUNC6(0) | NISTC_AI_TRIG_START1_SYNC;
	switch (cmd->start_src) {
	case TRIG_INT:
	case TRIG_NOW:
		ai_trig |= NISTC_AI_TRIG_START1_EDGE |
			   FUNC5(0);
		break;
	case TRIG_EXT:
		ai_trig |= FUNC5(
			FUNC10(FUNC0(cmd->start_arg),
					       NI_AI_StartTrigger,
					       &devpriv->routing_tables, 1));

		if (cmd->start_arg & CR_INVERT)
			ai_trig |= NISTC_AI_TRIG_START1_POLARITY;
		if (cmd->start_arg & CR_EDGE)
			ai_trig |= NISTC_AI_TRIG_START1_EDGE;
		break;
	}
	FUNC15(dev, ai_trig, NISTC_AI_TRIG_SEL_REG);

	mode2 &= ~NISTC_AI_MODE2_PRE_TRIGGER;
	mode2 &= ~NISTC_AI_MODE2_SC_INIT_LOAD_SRC;
	mode2 &= ~NISTC_AI_MODE2_SC_RELOAD_MODE;
	FUNC15(dev, mode2, NISTC_AI_MODE2_REG);

	if (cmd->chanlist_len == 1 || devpriv->is_611x || devpriv->is_6143) {
		/* logic low */
		start_stop_select |= NISTC_AI_STOP_POLARITY |
				     FUNC4(31) |
				     NISTC_AI_STOP_SYNC;
	} else {
		/*  ai configuration memory */
		start_stop_select |= FUNC4(19);
	}
	FUNC15(dev, start_stop_select, NISTC_AI_START_STOP_REG);

	devpriv->ai_cmd2 = 0;
	switch (cmd->stop_src) {
	case TRIG_COUNT:
		stop_count = cmd->stop_arg - 1;

		if (devpriv->is_611x) {
			/*  have to take 3 stage adc pipeline into account */
			stop_count += num_adc_stages_611x;
		}
		/* stage number of scans */
		FUNC14(dev, stop_count, NISTC_AI_SC_LOADA_REG);

		mode1 |= NISTC_AI_MODE1_START_STOP |
			 NISTC_AI_MODE1_RSVD |
			 NISTC_AI_MODE1_TRIGGER_ONCE;
		FUNC15(dev, mode1, NISTC_AI_MODE1_REG);
		/* load SC (Scan Count) */
		FUNC15(dev, NISTC_AI_CMD1_SC_LOAD, NISTC_AI_CMD1_REG);

		if (stop_count == 0) {
			devpriv->ai_cmd2 |= NISTC_AI_CMD2_END_ON_EOS;
			interrupt_a_enable |= NISTC_INTA_ENA_AI_STOP;
			/*
			 * This is required to get the last sample for
			 * chanlist_len > 1, not sure why.
			 */
			if (cmd->chanlist_len > 1)
				start_stop_select |= NISTC_AI_STOP_POLARITY |
						     NISTC_AI_STOP_EDGE;
		}
		break;
	case TRIG_NONE:
		/* stage number of scans */
		FUNC14(dev, 0, NISTC_AI_SC_LOADA_REG);

		mode1 |= NISTC_AI_MODE1_START_STOP |
			 NISTC_AI_MODE1_RSVD |
			 NISTC_AI_MODE1_CONTINUOUS;
		FUNC15(dev, mode1, NISTC_AI_MODE1_REG);

		/* load SC (Scan Count) */
		FUNC15(dev, NISTC_AI_CMD1_SC_LOAD, NISTC_AI_CMD1_REG);
		break;
	}

	switch (cmd->scan_begin_src) {
	case TRIG_TIMER:
		/*
		 * stop bits for non 611x boards
		 * NISTC_AI_MODE3_SI_TRIG_DELAY=0
		 * NISTC_AI_MODE2_PRE_TRIGGER=0
		 * NISTC_AI_START_STOP_REG:
		 * NISTC_AI_START_POLARITY=0	(?) rising edge
		 * NISTC_AI_START_EDGE=1	edge triggered
		 * NISTC_AI_START_SYNC=1	(?)
		 * NISTC_AI_START_SEL=0		SI_TC
		 * NISTC_AI_STOP_POLARITY=0	rising edge
		 * NISTC_AI_STOP_EDGE=0		level
		 * NISTC_AI_STOP_SYNC=1
		 * NISTC_AI_STOP_SEL=19		external pin (configuration mem)
		 */
		start_stop_select |= NISTC_AI_START_EDGE | NISTC_AI_START_SYNC;
		FUNC15(dev, start_stop_select, NISTC_AI_START_STOP_REG);

		mode2 &= ~NISTC_AI_MODE2_SI_INIT_LOAD_SRC;	/* A */
		mode2 |= FUNC2(0);
		/* mode2 |= NISTC_AI_MODE2_SC_RELOAD_MODE; */
		FUNC15(dev, mode2, NISTC_AI_MODE2_REG);

		/* load SI */
		timer = FUNC12(dev, cmd->scan_begin_arg,
				       CMDF_ROUND_NEAREST);
		FUNC14(dev, timer, NISTC_AI_SI_LOADA_REG);
		FUNC15(dev, NISTC_AI_CMD1_SI_LOAD, NISTC_AI_CMD1_REG);
		break;
	case TRIG_EXT:
		if (cmd->scan_begin_arg & CR_EDGE)
			start_stop_select |= NISTC_AI_START_EDGE;
		if (cmd->scan_begin_arg & CR_INVERT)	/* falling edge */
			start_stop_select |= NISTC_AI_START_POLARITY;
		if (cmd->scan_begin_src != cmd->convert_src ||
		    (cmd->scan_begin_arg & ~CR_EDGE) !=
		    (cmd->convert_arg & ~CR_EDGE))
			start_stop_select |= NISTC_AI_START_SYNC;
		start_stop_select |= FUNC3(
			FUNC10(FUNC0(cmd->scan_begin_arg),
					       NI_AI_SampleClock,
					       &devpriv->routing_tables, 1));
		FUNC15(dev, start_stop_select, NISTC_AI_START_STOP_REG);
		break;
	}

	switch (cmd->convert_src) {
	case TRIG_TIMER:
	case TRIG_NOW:
		if (cmd->convert_arg == 0 || cmd->convert_src == TRIG_NOW)
			timer = 1;
		else
			timer = FUNC12(dev, cmd->convert_arg,
					       CMDF_ROUND_NEAREST);
		/* 0,0 does not work */
		FUNC15(dev, 1, NISTC_AI_SI2_LOADA_REG);
		FUNC15(dev, timer, NISTC_AI_SI2_LOADB_REG);

		mode2 &= ~NISTC_AI_MODE2_SI2_INIT_LOAD_SRC;	/* A */
		mode2 |= NISTC_AI_MODE2_SI2_RELOAD_MODE;	/* alternate */
		FUNC15(dev, mode2, NISTC_AI_MODE2_REG);

		FUNC15(dev, NISTC_AI_CMD1_SI2_LOAD, NISTC_AI_CMD1_REG);

		mode2 |= NISTC_AI_MODE2_SI2_INIT_LOAD_SRC;	/* B */
		mode2 |= NISTC_AI_MODE2_SI2_RELOAD_MODE;	/* alternate */
		FUNC15(dev, mode2, NISTC_AI_MODE2_REG);
		break;
	case TRIG_EXT:
		mode1 |= FUNC1(
			FUNC10(FUNC0(cmd->convert_arg),
					       NI_AI_ConvertClock,
					       &devpriv->routing_tables, 1));
		if ((cmd->convert_arg & CR_INVERT) == 0)
			mode1 |= NISTC_AI_MODE1_CONVERT_POLARITY;
		FUNC15(dev, mode1, NISTC_AI_MODE1_REG);

		mode2 |= NISTC_AI_MODE2_SC_GATE_ENA |
			 NISTC_AI_MODE2_START_STOP_GATE_ENA;
		FUNC15(dev, mode2, NISTC_AI_MODE2_REG);

		break;
	}

	if (dev->irq) {
		/* interrupt on FIFO, errors, SC_TC */
		interrupt_a_enable |= NISTC_INTA_ENA_AI_ERR |
				      NISTC_INTA_ENA_AI_SC_TC;

#ifndef PCIDMA
		interrupt_a_enable |= NISTC_INTA_ENA_AI_FIFO;
#endif

		if ((cmd->flags & CMDF_WAKE_EOS) ||
		    (devpriv->ai_cmd2 & NISTC_AI_CMD2_END_ON_EOS)) {
			/* wake on end-of-scan */
			devpriv->aimode = AIMODE_SCAN;
		} else {
			devpriv->aimode = AIMODE_HALF_FULL;
		}

		switch (devpriv->aimode) {
		case AIMODE_HALF_FULL:
			/* FIFO interrupts and DMA requests on half-full */
#ifdef PCIDMA
			ni_stc_writew(dev, NISTC_AI_MODE3_FIFO_MODE_HF_E,
				      NISTC_AI_MODE3_REG);
#else
			FUNC15(dev, NISTC_AI_MODE3_FIFO_MODE_HF,
				      NISTC_AI_MODE3_REG);
#endif
			break;
		case AIMODE_SAMPLE:
			/*generate FIFO interrupts on non-empty */
			FUNC15(dev, NISTC_AI_MODE3_FIFO_MODE_NE,
				      NISTC_AI_MODE3_REG);
			break;
		case AIMODE_SCAN:
#ifdef PCIDMA
			ni_stc_writew(dev, NISTC_AI_MODE3_FIFO_MODE_NE,
				      NISTC_AI_MODE3_REG);
#else
			FUNC15(dev, NISTC_AI_MODE3_FIFO_MODE_HF,
				      NISTC_AI_MODE3_REG);
#endif
			interrupt_a_enable |= NISTC_INTA_ENA_AI_STOP;
			break;
		default:
			break;
		}

		/* clear interrupts */
		FUNC15(dev, NISTC_INTA_ACK_AI_ALL, NISTC_INTA_ACK_REG);

		FUNC13(dev, NISTC_INTA_ENA_REG, interrupt_a_enable, 1);
	} else {
		/* interrupt on nothing */
		FUNC13(dev, NISTC_INTA_ENA_REG, ~0, 0);

		/* XXX start polling if necessary */
	}

	/* end configuration */
	FUNC15(dev, NISTC_RESET_AI_CFG_END, NISTC_RESET_REG);

	switch (cmd->scan_begin_src) {
	case TRIG_TIMER:
		FUNC15(dev, NISTC_AI_CMD1_SI2_ARM |
				   NISTC_AI_CMD1_SI_ARM |
				   NISTC_AI_CMD1_DIV_ARM |
				   NISTC_AI_CMD1_SC_ARM,
			      NISTC_AI_CMD1_REG);
		break;
	case TRIG_EXT:
		FUNC15(dev, NISTC_AI_CMD1_SI2_ARM |
				   NISTC_AI_CMD1_SI_ARM |	/* XXX ? */
				   NISTC_AI_CMD1_DIV_ARM |
				   NISTC_AI_CMD1_SC_ARM,
			      NISTC_AI_CMD1_REG);
		break;
	}

#ifdef PCIDMA
	{
		int retval = ni_ai_setup_MITE_dma(dev);

		if (retval)
			return retval;
	}
#endif

	if (cmd->start_src == TRIG_NOW) {
		FUNC15(dev, NISTC_AI_CMD2_START1_PULSE |
				   devpriv->ai_cmd2,
			      NISTC_AI_CMD2_REG);
		s->async->inttrig = NULL;
	} else if (cmd->start_src == TRIG_EXT) {
		s->async->inttrig = NULL;
	} else {	/* TRIG_INT */
		s->async->inttrig = ni_ai_inttrig;
	}

	return 0;
}