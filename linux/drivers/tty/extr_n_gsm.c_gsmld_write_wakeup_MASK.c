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
struct tty_struct {int /*<<< orphan*/  flags; struct gsm_mux* disc_data; } ;
struct gsm_mux {scalar_t__ tx_bytes; int /*<<< orphan*/  tx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 scalar_t__ TX_THRESH_LO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gsm_mux*) ; 
 int /*<<< orphan*/  FUNC2 (struct gsm_mux*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct gsm_mux *gsm = tty->disc_data;
	unsigned long flags;

	/* Queue poll */
	FUNC0(TTY_DO_WRITE_WAKEUP, &tty->flags);
	FUNC3(&gsm->tx_lock, flags);
	FUNC1(gsm);
	if (gsm->tx_bytes < TX_THRESH_LO) {
		FUNC2(gsm);
	}
	FUNC4(&gsm->tx_lock, flags);
}