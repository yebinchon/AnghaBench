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
struct ni_private {int /*<<< orphan*/  ao_mode2; } ;
struct comedi_device {struct ni_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  NISTC_AO_MODE2_FIFO_MODE_HF ; 
 int /*<<< orphan*/  NISTC_AO_MODE2_FIFO_MODE_HF_F ; 
 int /*<<< orphan*/  NISTC_AO_MODE2_FIFO_MODE_MASK ; 
 int /*<<< orphan*/  NISTC_AO_MODE2_FIFO_REXMIT_ENA ; 
 int /*<<< orphan*/  NISTC_AO_MODE2_REG ; 
 int /*<<< orphan*/  NISTC_AO_START_AOFREQ_ENA ; 
 int /*<<< orphan*/  NISTC_AO_START_SEL_REG ; 
 int /*<<< orphan*/  NISTC_RESET_AO_CFG_END ; 
 int /*<<< orphan*/  NISTC_RESET_AO_CFG_START ; 
 int /*<<< orphan*/  NISTC_RESET_REG ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct comedi_device *dev)
{
	struct ni_private *devpriv = dev->private;

	FUNC0(dev, NISTC_RESET_AO_CFG_START, NISTC_RESET_REG);

	devpriv->ao_mode2 &= ~NISTC_AO_MODE2_FIFO_MODE_MASK;
#ifdef PCIDMA
	devpriv->ao_mode2 |= NISTC_AO_MODE2_FIFO_MODE_HF_F;
#else
	devpriv->ao_mode2 |= NISTC_AO_MODE2_FIFO_MODE_HF;
#endif
	/* NOTE:  this is where use_onboard_memory=True would be implemented */
	devpriv->ao_mode2 &= ~NISTC_AO_MODE2_FIFO_REXMIT_ENA;
	FUNC0(dev, devpriv->ao_mode2, NISTC_AO_MODE2_REG);

	/* enable sending of ao fifo requests (dma request) */
	FUNC0(dev, NISTC_AO_START_AOFREQ_ENA, NISTC_AO_START_SEL_REG);

	FUNC0(dev, NISTC_RESET_AO_CFG_END, NISTC_RESET_REG);

	/* we are not supporting boards with virtual fifos */
}