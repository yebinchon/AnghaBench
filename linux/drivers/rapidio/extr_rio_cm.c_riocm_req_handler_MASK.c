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
typedef  void* u16 ;
struct rio_channel {scalar_t__ state; int /*<<< orphan*/  comp; int /*<<< orphan*/  lock; int /*<<< orphan*/  accept_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  src_id; } ;
struct rio_ch_chan_hdr {int /*<<< orphan*/  src_ch; TYPE_1__ bhdr; int /*<<< orphan*/  dst_ch; } ;
struct conn_req {int /*<<< orphan*/  node; struct cm_dev* cmdev; void* chan; int /*<<< orphan*/  destid; } ;
struct cm_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ RIO_CM_LISTEN ; 
 int /*<<< orphan*/  RX_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct conn_req* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,void*) ; 
 struct rio_channel* FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct rio_channel*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct cm_dev *cm, void *req_data)
{
	struct rio_channel *ch;
	struct conn_req *req;
	struct rio_ch_chan_hdr *hh = req_data;
	u16 chnum;

	chnum = FUNC4(hh->dst_ch);

	ch = FUNC6(chnum);

	if (!ch)
		return -ENODEV;

	if (ch->state != RIO_CM_LISTEN) {
		FUNC5(RX_CMD, "channel %d is not in listen state", chnum);
		FUNC7(ch);
		return -EINVAL;
	}

	req = FUNC1(sizeof(*req), GFP_KERNEL);
	if (!req) {
		FUNC7(ch);
		return -ENOMEM;
	}

	req->destid = FUNC3(hh->bhdr.src_id);
	req->chan = FUNC4(hh->src_ch);
	req->cmdev = cm;

	FUNC8(&ch->lock);
	FUNC2(&req->node, &ch->accept_queue);
	FUNC9(&ch->lock);
	FUNC0(&ch->comp);
	FUNC7(ch);

	return 0;
}