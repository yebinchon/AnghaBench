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
struct tty_struct {int /*<<< orphan*/  port; struct mips_ejtag_fdc_tty_port* driver_data; } ;
struct mips_ejtag_fdc_tty_port {int /*<<< orphan*/  xmit_lock; int /*<<< orphan*/  xmit_empty; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; struct mips_ejtag_fdc_tty* driver; } ;
struct mips_ejtag_fdc_tty {int /*<<< orphan*/  xmit_total; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct mips_ejtag_fdc_tty_port *dport = tty->driver_data;
	struct mips_ejtag_fdc_tty *priv = dport->driver;

	/* Drop any data in the xmit buffer */
	FUNC2(&dport->xmit_lock);
	if (dport->xmit_cnt) {
		FUNC0(dport->xmit_cnt, &priv->xmit_total);
		dport->xmit_cnt = 0;
		dport->xmit_head = 0;
		dport->xmit_tail = 0;
		FUNC1(&dport->xmit_empty);
	}
	FUNC3(&dport->xmit_lock);

	FUNC4(tty->port);
}