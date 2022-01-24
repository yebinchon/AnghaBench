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
struct ni_private {unsigned int ai_calib_source; scalar_t__* ai_offset; } ;
struct ni_board_struct {size_t gainlkup; } ;
struct comedi_device {struct ni_private* private; struct ni_board_struct* board_ptr; } ;

/* Variables and functions */
#define  AREF_COMMON 131 
#define  AREF_DIFF 130 
#define  AREF_GROUND 129 
#define  AREF_OTHER 128 
 unsigned int CR_ALT_FILTER ; 
 unsigned int CR_ALT_SOURCE ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  NISTC_CFG_MEM_CLR_REG ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 
 unsigned int NI_M_AI_CFG_CHAN_TYPE_COMMON ; 
 unsigned int NI_M_AI_CFG_CHAN_TYPE_DIFF ; 
 unsigned int NI_M_AI_CFG_CHAN_TYPE_GROUND ; 
 unsigned int NI_M_AI_CFG_DITHER ; 
 int /*<<< orphan*/  NI_M_AI_CFG_FIFO_DATA_REG ; 
 unsigned int FUNC5 (unsigned int) ; 
 unsigned int NI_M_AI_CFG_LAST_CHAN ; 
 unsigned int NI_M_AI_CFG_POLARITY ; 
 unsigned int FUNC6 (unsigned int) ; 
 unsigned int NI_M_CFG_BYPASS_AI_DITHER ; 
 unsigned int FUNC7 (unsigned int) ; 
 unsigned int NI_M_CFG_BYPASS_AI_POLARITY ; 
 unsigned int NI_M_CFG_BYPASS_FIFO ; 
 int /*<<< orphan*/  NI_M_CFG_BYPASS_FIFO_REG ; 
 unsigned int** ni_gainlkup ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct comedi_device *dev,
					      unsigned int n_chan,
					      unsigned int *list)
{
	const struct ni_board_struct *board = dev->board_ptr;
	struct ni_private *devpriv = dev->private;
	unsigned int chan, range, aref;
	unsigned int i;
	unsigned int dither;
	unsigned int range_code;

	FUNC9(dev, 1, NISTC_CFG_MEM_CLR_REG);

	if ((list[0] & CR_ALT_SOURCE)) {
		unsigned int bypass_bits;

		chan = FUNC1(list[0]);
		range = FUNC2(list[0]);
		range_code = ni_gainlkup[board->gainlkup][range];
		dither = (list[0] & CR_ALT_FILTER) != 0;
		bypass_bits = NI_M_CFG_BYPASS_FIFO |
			      FUNC6(chan) |
			      FUNC7(range_code) |
			      devpriv->ai_calib_source;
		if (dither)
			bypass_bits |= NI_M_CFG_BYPASS_AI_DITHER;
		/*  don't use 2's complement encoding */
		bypass_bits |= NI_M_CFG_BYPASS_AI_POLARITY;
		FUNC10(dev, bypass_bits, NI_M_CFG_BYPASS_FIFO_REG);
	} else {
		FUNC10(dev, 0, NI_M_CFG_BYPASS_FIFO_REG);
	}
	for (i = 0; i < n_chan; i++) {
		unsigned int config_bits = 0;

		chan = FUNC1(list[i]);
		aref = FUNC0(list[i]);
		range = FUNC2(list[i]);
		dither = (list[i] & CR_ALT_FILTER) != 0;

		range_code = ni_gainlkup[board->gainlkup][range];
		devpriv->ai_offset[i] = 0;
		switch (aref) {
		case AREF_DIFF:
			config_bits |= NI_M_AI_CFG_CHAN_TYPE_DIFF;
			break;
		case AREF_COMMON:
			config_bits |= NI_M_AI_CFG_CHAN_TYPE_COMMON;
			break;
		case AREF_GROUND:
			config_bits |= NI_M_AI_CFG_CHAN_TYPE_GROUND;
			break;
		case AREF_OTHER:
			break;
		}
		config_bits |= FUNC4(chan);
		config_bits |= FUNC3(chan);
		config_bits |= FUNC5(range_code);
		if (i == n_chan - 1)
			config_bits |= NI_M_AI_CFG_LAST_CHAN;
		if (dither)
			config_bits |= NI_M_AI_CFG_DITHER;
		/*  don't use 2's complement encoding */
		config_bits |= NI_M_AI_CFG_POLARITY;
		FUNC11(dev, config_bits, NI_M_AI_CFG_FIFO_DATA_REG);
	}
	FUNC8(dev);
}