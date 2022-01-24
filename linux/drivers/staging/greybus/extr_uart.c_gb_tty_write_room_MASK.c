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
struct gb_tty {int /*<<< orphan*/  write_lock; int /*<<< orphan*/  write_fifo; } ;

/* Variables and functions */
 scalar_t__ GB_UART_WRITE_ROOM_MARGIN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty)
{
	struct gb_tty *gb_tty = tty->driver_data;
	unsigned long flags;
	int room;

	FUNC1(&gb_tty->write_lock, flags);
	room = FUNC0(&gb_tty->write_fifo);
	FUNC2(&gb_tty->write_lock, flags);

	room -= GB_UART_WRITE_ROOM_MARGIN;
	if (room < 0)
		return 0;

	return room;
}