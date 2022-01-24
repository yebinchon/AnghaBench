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
struct qeth_reply {int (* callback ) (struct qeth_card*,struct qeth_reply*,unsigned long) ;void* param; } ;
struct qeth_cmd_buffer {long timeout; int rc; int /*<<< orphan*/  lock; int /*<<< orphan*/  done; int /*<<< orphan*/  length; int /*<<< orphan*/  data; int /*<<< orphan*/  (* finalize ) (struct qeth_card*,struct qeth_cmd_buffer*) ;struct qeth_reply reply; struct qeth_channel* channel; } ;
struct qeth_channel {int /*<<< orphan*/  irq_pending; int /*<<< orphan*/  ccwdev; } ;
struct qeth_card {int /*<<< orphan*/  wait_q; } ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  CTRL ; 
 int EINTR ; 
 long ERESTARTSYS ; 
 int ETIME ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  QETH_DBF_CTRL_LEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct qeth_card*,struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC11 (struct qeth_card*,struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC12 (struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC13 (struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC14 (struct qeth_channel*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct qeth_card*,struct qeth_cmd_buffer*) ; 
 long FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 long FUNC19 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct qeth_card *card,
				  struct qeth_cmd_buffer *iob,
				  int (*reply_cb)(struct qeth_card *cb_card,
						  struct qeth_reply *cb_reply,
						  unsigned long cb_cmd),
				  void *reply_param)
{
	struct qeth_channel *channel = iob->channel;
	struct qeth_reply *reply = &iob->reply;
	long timeout = iob->timeout;
	int rc;

	FUNC1(card, 2, "sendctl");

	reply->callback = reply_cb;
	reply->param = reply_param;

	timeout = FUNC18(card->wait_q,
						   FUNC14(channel),
						   timeout);
	if (timeout <= 0) {
		FUNC13(iob);
		return (timeout == -ERESTARTSYS) ? -EINTR : -ETIME;
	}

	if (iob->finalize)
		iob->finalize(card, iob);
	FUNC3(CTRL, 2, iob->data, FUNC9(iob->length, QETH_DBF_CTRL_LEN));

	FUNC11(card, iob);

	/* This pairs with iob->callback, and keeps the iob alive after IO: */
	FUNC12(iob);

	FUNC1(card, 6, "noirqpnd");
	FUNC15(FUNC8(channel->ccwdev));
	rc = FUNC7(channel->ccwdev, FUNC5(iob),
				      (addr_t) iob, 0, 0, timeout);
	FUNC16(FUNC8(channel->ccwdev));
	if (rc) {
		FUNC4(2, "qeth_send_control_data on device %x: ccw_device_start rc = %i\n",
				 FUNC0(card), rc);
		FUNC2(card, 2, " err%d", rc);
		FUNC10(card, iob);
		FUNC13(iob);
		FUNC6(&channel->irq_pending, 0);
		FUNC20(&card->wait_q);
		goto out;
	}

	timeout = FUNC19(&iob->done,
							    timeout);
	if (timeout <= 0)
		rc = (timeout == -ERESTARTSYS) ? -EINTR : -ETIME;

	FUNC10(card, iob);

	if (reply_cb) {
		/* Wait until the callback for a late reply has completed: */
		FUNC15(&iob->lock);
		if (rc)
			/* Zap any callback that's still pending: */
			iob->rc = rc;
		FUNC16(&iob->lock);
	}

	if (!rc)
		rc = iob->rc;

out:
	FUNC13(iob);
	return rc;
}