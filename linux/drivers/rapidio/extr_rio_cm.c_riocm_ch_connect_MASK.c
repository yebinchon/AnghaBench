#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct rio_channel {int /*<<< orphan*/  id; int /*<<< orphan*/  comp; int /*<<< orphan*/  loc_destid; int /*<<< orphan*/  rem_channel; int /*<<< orphan*/ * context; TYPE_3__* rdev; struct cm_dev* cmdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  type; void* dst_mbox; void* src_mbox; void* dst_id; void* src_id; } ;
struct rio_ch_chan_hdr {void* src_ch; void* dst_ch; int /*<<< orphan*/  ch_op; TYPE_2__ bhdr; } ;
struct cm_peer {TYPE_3__* rdev; } ;
struct cm_dev {TYPE_1__* mport; } ;
struct TYPE_7__ {int /*<<< orphan*/  destid; } ;
struct TYPE_5__ {int /*<<< orphan*/  host_deviceid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_CONN_REQ ; 
 int EBUSY ; 
 int EINTR ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 long ERESTARTSYS ; 
 int ETIME ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int RIOCM_CONNECT_TO ; 
 int /*<<< orphan*/  RIO_CM_CHAN ; 
 int /*<<< orphan*/  RIO_CM_CONNECT ; 
 int /*<<< orphan*/  RIO_CM_CONNECTED ; 
 int /*<<< orphan*/  RIO_CM_IDLE ; 
 int /*<<< orphan*/  WAIT ; 
 void* cmbox ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rio_ch_chan_hdr*) ; 
 struct rio_ch_chan_hdr* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct rio_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rio_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,long) ; 
 struct rio_channel* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct cm_dev*,TYPE_3__*,struct rio_ch_chan_hdr*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rio_channel*) ; 
 int FUNC10 (struct cm_dev*,TYPE_3__*,struct rio_ch_chan_hdr*,int) ; 
 long FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(u16 loc_ch, struct cm_dev *cm,
			    struct cm_peer *peer, u16 rem_ch)
{
	struct rio_channel *ch = NULL;
	struct rio_ch_chan_hdr *hdr;
	int ret;
	long wret;

	ch = FUNC7(loc_ch);
	if (!ch)
		return -ENODEV;

	if (!FUNC5(ch, RIO_CM_IDLE, RIO_CM_CONNECT)) {
		ret = -EINVAL;
		goto conn_done;
	}

	ch->cmdev = cm;
	ch->rdev = peer->rdev;
	ch->context = NULL;
	ch->loc_destid = cm->mport->host_deviceid;
	ch->rem_channel = rem_ch;

	/*
	 * Send connect request to the remote RapidIO device
	 */

	hdr = FUNC3(sizeof(*hdr), GFP_KERNEL);
	if (hdr == NULL) {
		ret = -ENOMEM;
		goto conn_done;
	}

	hdr->bhdr.src_id = FUNC0(ch->loc_destid);
	hdr->bhdr.dst_id = FUNC0(peer->rdev->destid);
	hdr->bhdr.src_mbox = cmbox;
	hdr->bhdr.dst_mbox = cmbox;
	hdr->bhdr.type = RIO_CM_CHAN;
	hdr->ch_op = CM_CONN_REQ;
	hdr->dst_ch = FUNC1(rem_ch);
	hdr->src_ch = FUNC1(loc_ch);

	/* ATTN: the function call below relies on the fact that underlying
	 * HW-specific add_outb_message() routine copies TX data into its
	 * internal transfer buffer. Must be reviewed if mport driver uses
	 * this buffer directly.
	 */
	ret = FUNC8(cm, peer->rdev, hdr, sizeof(*hdr));

	if (ret != -EBUSY) {
		FUNC2(hdr);
	} else {
		ret = FUNC10(cm, peer->rdev, hdr, sizeof(*hdr));
		if (ret)
			FUNC2(hdr);
	}

	if (ret) {
		FUNC5(ch, RIO_CM_CONNECT, RIO_CM_IDLE);
		goto conn_done;
	}

	/* Wait for connect response from the remote device */
	wret = FUNC11(&ch->comp,
							 RIOCM_CONNECT_TO * HZ);
	FUNC6(WAIT, "wait on %d returns %ld", ch->id, wret);

	if (!wret)
		ret = -ETIME;
	else if (wret == -ERESTARTSYS)
		ret = -EINTR;
	else
		ret = FUNC4(ch, RIO_CM_CONNECTED) ? 0 : -1;

conn_done:
	FUNC9(ch);
	return ret;
}