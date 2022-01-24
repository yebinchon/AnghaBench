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
typedef  int u32 ;
struct mips_ejtag_fdc_tty_port {unsigned int xmit_cnt; int /*<<< orphan*/  xmit_lock; } ;
struct mips_ejtag_fdc_tty {int xmit_full; scalar_t__ irq; size_t xmit_next; struct mips_ejtag_fdc_tty_port* ports; int /*<<< orphan*/  waitqueue; int /*<<< orphan*/  lock; int /*<<< orphan*/  xmit_total; } ;

/* Variables and functions */
 size_t NUM_TTY_CHANNELS ; 
 int /*<<< orphan*/  REG_FDCFG ; 
 int REG_FDCFG_TXINTTHRES ; 
 int REG_FDCFG_TXINTTHRES_NOTFULL ; 
 int /*<<< orphan*/  REG_FDSTAT ; 
 int REG_FDSTAT_TXF ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 unsigned int FUNC3 (struct mips_ejtag_fdc_tty*,size_t) ; 
 int FUNC4 (struct mips_ejtag_fdc_tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mips_ejtag_fdc_tty*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(void *arg)
{
	struct mips_ejtag_fdc_tty *priv = arg;
	struct mips_ejtag_fdc_tty_port *dport;
	unsigned int ret;
	u32 cfg;

	FUNC0(TASK_RUNNING);
	while (!FUNC2()) {
		/* Wait for data to actually write */
		FUNC10(priv->waitqueue,
					 FUNC1(&priv->xmit_total) ||
					 FUNC2());
		if (FUNC2())
			break;

		/* Wait for TX FIFO space to write data */
		FUNC6(&priv->lock);
		if (FUNC4(priv, REG_FDSTAT) & REG_FDSTAT_TXF) {
			priv->xmit_full = true;
			if (priv->irq >= 0) {
				/* Enable TX interrupt */
				cfg = FUNC4(priv, REG_FDCFG);
				cfg &= ~REG_FDCFG_TXINTTHRES;
				cfg |= REG_FDCFG_TXINTTHRES_NOTFULL;
				FUNC5(priv, REG_FDCFG, cfg);
			}
		}
		FUNC7(&priv->lock);
		FUNC10(priv->waitqueue,
					 !(FUNC4(priv, REG_FDSTAT)
					   & REG_FDSTAT_TXF) ||
					 FUNC2());
		if (FUNC2())
			break;

		/* Find next channel with data to output */
		for (;;) {
			dport = &priv->ports[priv->xmit_next];
			FUNC8(&dport->xmit_lock);
			ret = dport->xmit_cnt;
			FUNC9(&dport->xmit_lock);
			if (ret)
				break;
			/* Round robin */
			++priv->xmit_next;
			if (priv->xmit_next >= NUM_TTY_CHANNELS)
				priv->xmit_next = 0;
		}

		/* Try writing data to the chosen channel */
		ret = FUNC3(priv, priv->xmit_next);

		/*
		 * If anything was output, move on to the next channel so as not
		 * to starve other channels.
		 */
		if (ret) {
			++priv->xmit_next;
			if (priv->xmit_next >= NUM_TTY_CHANNELS)
				priv->xmit_next = 0;
		}
	}

	return 0;
}