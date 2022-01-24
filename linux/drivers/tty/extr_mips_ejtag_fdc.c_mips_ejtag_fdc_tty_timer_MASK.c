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
struct timer_list {int dummy; } ;
struct mips_ejtag_fdc_tty {int /*<<< orphan*/  poll_timer; int /*<<< orphan*/  removing; } ;

/* Variables and functions */
 scalar_t__ FDC_TTY_POLL ; 
 struct mips_ejtag_fdc_tty* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct mips_ejtag_fdc_tty*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  poll_timer ; 
 struct mips_ejtag_fdc_tty* priv ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct mips_ejtag_fdc_tty *priv = FUNC0(priv, t, poll_timer);

	FUNC1(priv);
	if (!priv->removing)
		FUNC2(&priv->poll_timer, jiffies + FDC_TTY_POLL);
}