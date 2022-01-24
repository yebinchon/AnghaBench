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
struct tty_struct {struct gb_tty* driver_data; } ;
struct gb_tty {int /*<<< orphan*/  tx_work; int /*<<< orphan*/  close_pending; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  write_fifo; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct tty_struct *tty, const unsigned char *buf,
			int count)
{
	struct gb_tty *gb_tty = tty->driver_data;

	count =  FUNC0(&gb_tty->write_fifo, buf, count,
				     &gb_tty->write_lock);
	if (count && !gb_tty->close_pending)
		FUNC1(&gb_tty->tx_work);

	return count;
}