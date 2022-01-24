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
struct tty_struct {int /*<<< orphan*/  name; struct isi_port* driver_data; } ;
struct isi_port {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  card_lock; } ;

/* Variables and functions */
 int ENODEV ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC0 (struct isi_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct isi_port*) ; 
 scalar_t__ FUNC2 (struct isi_port*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct isi_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct isi_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct tty_struct *tty,
					unsigned int set, unsigned int clear)
{
	struct isi_port *port = tty->driver_data;
	unsigned long flags;

	if (FUNC2(port, tty->name, "isicom_ioctl"))
		return -ENODEV;

	FUNC5(&port->card->card_lock, flags);
	if (set & TIOCM_RTS)
		FUNC4(port);
	if (set & TIOCM_DTR)
		FUNC3(port);

	if (clear & TIOCM_RTS)
		FUNC1(port);
	if (clear & TIOCM_DTR)
		FUNC0(port);
	FUNC6(&port->card->card_lock, flags);

	return 0;
}