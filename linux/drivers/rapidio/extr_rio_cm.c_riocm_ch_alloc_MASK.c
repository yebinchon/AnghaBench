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
typedef  int u16 ;
struct TYPE_2__ {scalar_t__ inuse_cnt; scalar_t__ count; scalar_t__ tail; scalar_t__ head; } ;
struct rio_channel {int id; TYPE_1__ rx_ring; int /*<<< orphan*/  ref; int /*<<< orphan*/  comp_close; int /*<<< orphan*/  comp; int /*<<< orphan*/  ch_node; int /*<<< orphan*/  accept_queue; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int ENOSPC ; 
 struct rio_channel* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int RIOCM_MAX_CHNUM ; 
 int /*<<< orphan*/  RIO_CM_IDLE ; 
 int /*<<< orphan*/  ch_idr ; 
 int chstart ; 
 int FUNC2 (int /*<<< orphan*/ *,struct rio_channel*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idr_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rio_channel*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct rio_channel* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rio_channel *FUNC12(u16 ch_num)
{
	int id;
	int start, end;
	struct rio_channel *ch;

	ch = FUNC8(sizeof(*ch), GFP_KERNEL);
	if (!ch)
		return FUNC0(-ENOMEM);

	if (ch_num) {
		/* If requested, try to obtain the specified channel ID */
		start = ch_num;
		end = ch_num + 1;
	} else {
		/* Obtain channel ID from the dynamic allocation range */
		start = chstart;
		end = RIOCM_MAX_CHNUM + 1;
	}

	FUNC3(GFP_KERNEL);
	FUNC9(&idr_lock);
	id = FUNC2(&ch_idr, ch, start, end, GFP_NOWAIT);
	FUNC11(&idr_lock);
	FUNC4();

	if (id < 0) {
		FUNC6(ch);
		return FUNC0(id == -ENOSPC ? -EBUSY : id);
	}

	ch->id = (u16)id;
	ch->state = RIO_CM_IDLE;
	FUNC10(&ch->lock);
	FUNC1(&ch->accept_queue);
	FUNC1(&ch->ch_node);
	FUNC5(&ch->comp);
	FUNC5(&ch->comp_close);
	FUNC7(&ch->ref);
	ch->rx_ring.head = 0;
	ch->rx_ring.tail = 0;
	ch->rx_ring.count = 0;
	ch->rx_ring.inuse_cnt = 0;

	return ch;
}