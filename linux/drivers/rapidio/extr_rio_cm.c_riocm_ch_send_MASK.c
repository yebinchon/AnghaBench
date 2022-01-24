#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct rio_channel {scalar_t__ rem_channel; scalar_t__ id; int /*<<< orphan*/  rdev; int /*<<< orphan*/  cmdev; int /*<<< orphan*/  rem_destid; int /*<<< orphan*/  loc_destid; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; void* dst_mbox; void* src_mbox; void* dst_id; void* src_id; } ;
struct rio_ch_chan_hdr {void* msg_len; void* src_ch; void* dst_ch; int /*<<< orphan*/  ch_op; TYPE_1__ bhdr; } ;
struct TYPE_5__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_DATA_MSG ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  RIO_CM_CHAN ; 
 int /*<<< orphan*/  RIO_CM_CONNECTED ; 
 int RIO_MAX_MSG_SIZE ; 
 int /*<<< orphan*/  TX ; 
 void* cmbox ; 
 TYPE_2__* current ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct rio_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct rio_channel* FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rio_channel*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(u16 ch_id, void *buf, int len)
{
	struct rio_channel *ch;
	struct rio_ch_chan_hdr *hdr;
	int ret;

	if (buf == NULL || ch_id == 0 || len == 0 || len > RIO_MAX_MSG_SIZE)
		return -EINVAL;

	ch = FUNC5(ch_id);
	if (!ch) {
		FUNC4("%s(%d) ch_%d not found", current->comm,
			    FUNC8(current), ch_id);
		return -ENODEV;
	}

	if (!FUNC2(ch, RIO_CM_CONNECTED)) {
		ret = -EAGAIN;
		goto err_out;
	}

	/*
	 * Fill buffer header section with corresponding channel data
	 */
	hdr = buf;

	hdr->bhdr.src_id = FUNC0(ch->loc_destid);
	hdr->bhdr.dst_id = FUNC0(ch->rem_destid);
	hdr->bhdr.src_mbox = cmbox;
	hdr->bhdr.dst_mbox = cmbox;
	hdr->bhdr.type = RIO_CM_CHAN;
	hdr->ch_op = CM_DATA_MSG;
	hdr->dst_ch = FUNC1(ch->rem_channel);
	hdr->src_ch = FUNC1(ch->id);
	hdr->msg_len = FUNC1((u16)len);

	/* ATTN: the function call below relies on the fact that underlying
	 * HW-specific add_outb_message() routine copies TX data into its own
	 * internal transfer buffer (true for all RIONET compatible mport
	 * drivers). Must be reviewed if mport driver uses the buffer directly.
	 */

	ret = FUNC6(ch->cmdev, ch->rdev, buf, len);
	if (ret)
		FUNC3(TX, "ch %d send_err=%d", ch->id, ret);
err_out:
	FUNC7(ch);
	return ret;
}