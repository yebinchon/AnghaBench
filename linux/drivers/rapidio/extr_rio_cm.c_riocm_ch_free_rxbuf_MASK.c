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
struct TYPE_2__ {void** inuse; int /*<<< orphan*/  inuse_cnt; } ;
struct rio_channel {int /*<<< orphan*/  lock; TYPE_1__ rx_ring; } ;

/* Variables and functions */
 int EINVAL ; 
 int RIOCM_RX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct rio_channel *ch, void *buf)
{
	int i, ret = -EINVAL;

	FUNC1(&ch->lock);

	for (i = 0; i < RIOCM_RX_RING_SIZE; i++) {
		if (ch->rx_ring.inuse[i] == buf) {
			ch->rx_ring.inuse[i] = NULL;
			ch->rx_ring.inuse_cnt--;
			ret = 0;
			break;
		}
	}

	FUNC2(&ch->lock);

	if (!ret)
		FUNC0(buf);

	return ret;
}