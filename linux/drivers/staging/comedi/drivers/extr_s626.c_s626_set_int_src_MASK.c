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
typedef  int u16 ;
struct s626_private {int counter_int_enabs; } ;
struct comedi_device {struct s626_private* private; } ;

/* Variables and functions */
 int S626_CRAMSK_INTSRC_A ; 
 int S626_CRBMSK_INTCTRL ; 
 int S626_CRBMSK_INTSRC_B ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct comedi_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct comedi_device*,int,int) ; 

__attribute__((used)) static void FUNC12(struct comedi_device *dev,
			     unsigned int chan, u16 int_source)
{
	struct s626_private *devpriv = dev->private;
	u16 cra_reg = FUNC1(chan);
	u16 crb_reg = FUNC2(chan);

	if (chan < 3) {
		/* Reset any pending counter overflow or index captures */
		FUNC10(dev, crb_reg, ~S626_CRBMSK_INTCTRL,
				  FUNC5(1) |
				  FUNC6(1));

		/* Program counter interrupt source */
		FUNC10(dev, cra_reg, ~S626_CRAMSK_INTSRC_A,
				  FUNC4(int_source));
	} else {
		u16 crb;

		/* Cache writeable CRB register image */
		crb = FUNC9(dev, crb_reg);
		crb &= ~S626_CRBMSK_INTCTRL;

		/* Reset any pending counter overflow or index captures */
		FUNC11(dev, crb_reg,
				crb | FUNC5(1) |
				FUNC7(1));

		/* Program counter interrupt source */
		FUNC11(dev, crb_reg,
				(crb & ~S626_CRBMSK_INTSRC_B) |
				FUNC8(int_source));
	}

	/* Update MISC2 interrupt enable mask. */
	devpriv->counter_int_enabs &= ~(FUNC3(chan) |
					FUNC0(chan));
	switch (int_source) {
	case 0:
	default:
		break;
	case 1:
		devpriv->counter_int_enabs |= FUNC3(chan);
		break;
	case 2:
		devpriv->counter_int_enabs |= FUNC0(chan);
		break;
	case 3:
		devpriv->counter_int_enabs |= (FUNC3(chan) |
					       FUNC0(chan));
		break;
	}
}