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
struct tty_struct {struct moxa_port* driver_data; } ;
struct moxa_port {int /*<<< orphan*/  statusflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOWWAIT ; 
 int FUNC0 (struct tty_struct*,unsigned char const*,int) ; 
 int /*<<< orphan*/  moxa_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty,
		      const unsigned char *buf, int count)
{
	struct moxa_port *ch = tty->driver_data;
	unsigned long flags;
	int len;

	if (ch == NULL)
		return 0;

	FUNC2(&moxa_lock, flags);
	len = FUNC0(tty, buf, count);
	FUNC3(&moxa_lock, flags);

	FUNC1(LOWWAIT, &ch->statusflags);
	return len;
}