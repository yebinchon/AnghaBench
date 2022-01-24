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
struct tty_struct {struct ipw_tty* driver_data; int /*<<< orphan*/  index; } ;
struct TYPE_2__ {scalar_t__ count; int low_latency; struct tty_struct* tty; } ;
struct ipw_tty {scalar_t__ tty_type; int /*<<< orphan*/  ipw_tty_mutex; int /*<<< orphan*/  network; TYPE_1__ port; scalar_t__ tx_bytes_queued; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ TTYTYPE_MODEM ; 
 struct ipw_tty* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *linux_tty, struct file *filp)
{
	struct ipw_tty *tty = FUNC0(linux_tty->index);

	if (!tty)
		return -ENODEV;

	FUNC2(&tty->ipw_tty_mutex);
	if (tty->port.count == 0)
		tty->tx_bytes_queued = 0;

	tty->port.count++;

	tty->port.tty = linux_tty;
	linux_tty->driver_data = tty;
	tty->port.low_latency = 1;

	if (tty->tty_type == TTYTYPE_MODEM)
		FUNC1(tty->network);

	FUNC3(&tty->ipw_tty_mutex);

	return 0;
}