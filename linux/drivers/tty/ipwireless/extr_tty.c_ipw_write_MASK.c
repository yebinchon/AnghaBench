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
struct tty_struct {struct ipw_tty* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; } ;
struct ipw_tty {int tx_bytes_queued; int /*<<< orphan*/  ipw_tty_mutex; int /*<<< orphan*/  hardware; TYPE_1__ port; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int IPWIRELESS_TX_QUEUE_SIZE ; 
 int /*<<< orphan*/  IPW_CHANNEL_RAS ; 
 int /*<<< orphan*/  ipw_write_packet_sent_callback ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char const*,int,int /*<<< orphan*/ ,struct ipw_tty*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *linux_tty,
		     const unsigned char *buf, int count)
{
	struct ipw_tty *tty = linux_tty->driver_data;
	int room, ret;

	if (!tty)
		return -ENODEV;

	FUNC1(&tty->ipw_tty_mutex);
	if (!tty->port.count) {
		FUNC2(&tty->ipw_tty_mutex);
		return -EINVAL;
	}

	room = IPWIRELESS_TX_QUEUE_SIZE - tty->tx_bytes_queued;
	if (room < 0)
		room = 0;
	/* Don't allow caller to write any more than we have room for */
	if (count > room)
		count = room;

	if (count == 0) {
		FUNC2(&tty->ipw_tty_mutex);
		return 0;
	}

	ret = FUNC0(tty->hardware, IPW_CHANNEL_RAS,
			       buf, count,
			       ipw_write_packet_sent_callback, tty);
	if (ret == -1) {
		FUNC2(&tty->ipw_tty_mutex);
		return 0;
	}

	tty->tx_bytes_queued += count;
	FUNC2(&tty->ipw_tty_mutex);

	return count;
}