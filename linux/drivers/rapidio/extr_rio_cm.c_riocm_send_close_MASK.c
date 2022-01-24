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
struct rio_channel {int /*<<< orphan*/  id; int /*<<< orphan*/  rdev; int /*<<< orphan*/  cmdev; int /*<<< orphan*/  rem_channel; int /*<<< orphan*/  rem_destid; int /*<<< orphan*/  loc_destid; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; void* dst_mbox; void* src_mbox; void* dst_id; void* src_id; } ;
struct rio_ch_chan_hdr {void* src_ch; void* dst_ch; int /*<<< orphan*/  ch_op; TYPE_1__ bhdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_CONN_CLOSE ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RIO_CM_CHAN ; 
 void* cmbox ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rio_ch_chan_hdr*) ; 
 struct rio_ch_chan_hdr* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rio_ch_chan_hdr*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rio_ch_chan_hdr*,int) ; 

__attribute__((used)) static int FUNC7(struct rio_channel *ch)
{
	struct rio_ch_chan_hdr *hdr;
	int ret;

	/*
	 * Send CH_CLOSE notification to the remote RapidIO device
	 */

	hdr = FUNC3(sizeof(*hdr), GFP_KERNEL);
	if (hdr == NULL)
		return -ENOMEM;

	hdr->bhdr.src_id = FUNC0(ch->loc_destid);
	hdr->bhdr.dst_id = FUNC0(ch->rem_destid);
	hdr->bhdr.src_mbox = cmbox;
	hdr->bhdr.dst_mbox = cmbox;
	hdr->bhdr.type = RIO_CM_CHAN;
	hdr->ch_op = CM_CONN_CLOSE;
	hdr->dst_ch = FUNC1(ch->rem_channel);
	hdr->src_ch = FUNC1(ch->id);

	/* ATTN: the function call below relies on the fact that underlying
	 * add_outb_message() routine copies TX data into its internal transfer
	 * buffer. Needs to be reviewed if switched to direct buffer mode.
	 */
	ret = FUNC5(ch->cmdev, ch->rdev, hdr, sizeof(*hdr));

	if (ret == -EBUSY && !FUNC6(ch->cmdev, ch->rdev,
					      hdr, sizeof(*hdr)))
		return 0;
	FUNC2(hdr);

	if (ret)
		FUNC4("ch(%d) send CLOSE failed (ret=%d)", ch->id, ret);

	return ret;
}