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
struct TYPE_2__ {int inuse_cnt; size_t tail; int /*<<< orphan*/ ** inuse; int /*<<< orphan*/  count; int /*<<< orphan*/ ** buf; } ;
struct rio_channel {int /*<<< orphan*/  lock; TYPE_1__ rx_ring; int /*<<< orphan*/  id; int /*<<< orphan*/  comp; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ECONNRESET ; 
 int EINTR ; 
 int ENOMEM ; 
 long ERESTARTSYS ; 
 int ETIME ; 
 int RIOCM_RX_RING_SIZE ; 
 int /*<<< orphan*/  RIO_CM_CONNECTED ; 
 int /*<<< orphan*/  WAIT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (struct rio_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 long FUNC5 (int /*<<< orphan*/ *,long) ; 

__attribute__((used)) static int FUNC6(struct rio_channel *ch, void **buf, long timeout)
{
	void *rxmsg = NULL;
	int i, ret = 0;
	long wret;

	if (!FUNC1(ch, RIO_CM_CONNECTED)) {
		ret = -EAGAIN;
		goto out;
	}

	if (ch->rx_ring.inuse_cnt == RIOCM_RX_RING_SIZE) {
		/* If we do not have entries to track buffers given to upper
		 * layer, reject request.
		 */
		ret = -ENOMEM;
		goto out;
	}

	wret = FUNC5(&ch->comp, timeout);

	FUNC2(WAIT, "wait on %d returned %ld", ch->id, wret);

	if (!wret)
		ret = -ETIME;
	else if (wret == -ERESTARTSYS)
		ret = -EINTR;
	else
		ret = FUNC1(ch, RIO_CM_CONNECTED) ? 0 : -ECONNRESET;

	if (ret)
		goto out;

	FUNC3(&ch->lock);

	rxmsg = ch->rx_ring.buf[ch->rx_ring.tail];
	ch->rx_ring.buf[ch->rx_ring.tail] = NULL;
	ch->rx_ring.count--;
	ch->rx_ring.tail++;
	ch->rx_ring.tail %= RIOCM_RX_RING_SIZE;
	ret = -ENOMEM;

	for (i = 0; i < RIOCM_RX_RING_SIZE; i++) {
		if (ch->rx_ring.inuse[i] == NULL) {
			ch->rx_ring.inuse[i] = rxmsg;
			ch->rx_ring.inuse_cnt++;
			ret = 0;
			break;
		}
	}

	if (ret) {
		/* We have no entry to store pending message: drop it */
		FUNC0(rxmsg);
		rxmsg = NULL;
	}

	FUNC4(&ch->lock);
out:
	*buf = rxmsg;
	return ret;
}