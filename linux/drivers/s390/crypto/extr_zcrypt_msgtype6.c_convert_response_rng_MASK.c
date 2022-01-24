#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct zcrypt_queue {TYPE_2__* queue; int /*<<< orphan*/  online; } ;
struct TYPE_6__ {int type; int /*<<< orphan*/  reply_code; } ;
struct TYPE_4__ {int cprb_ver_id; } ;
struct type86x_reply {TYPE_3__ hdr; TYPE_1__ cprbx; } ;
struct ap_message {struct type86x_reply* message; } ;
struct TYPE_5__ {int /*<<< orphan*/  qid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBF_ERR ; 
 int EAGAIN ; 
 int EINVAL ; 
#define  TYPE82_RSP_CODE 130 
#define  TYPE86_RSP_CODE 129 
#define  TYPE88_RSP_CODE 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct zcrypt_queue*,struct ap_message*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct zcrypt_queue *zq,
				 struct ap_message *reply,
				 char *data)
{
	struct type86x_reply *msg = reply->message;

	switch (msg->hdr.type) {
	case TYPE82_RSP_CODE:
	case TYPE88_RSP_CODE:
		return -EINVAL;
	case TYPE86_RSP_CODE:
		if (msg->hdr.reply_code)
			return -EINVAL;
		if (msg->cprbx.cprb_ver_id == 0x02)
			return FUNC3(zq, reply, data);
		/* fall through - wrong cprb version is an unknown response */
	default: /* Unknown response type, this should NEVER EVER happen */
		zq->online = 0;
		FUNC4("Cryptographic device %02x.%04x failed and was set offline\n",
		       FUNC0(zq->queue->qid),
		       FUNC1(zq->queue->qid));
		FUNC2(DBF_ERR,
			   "device=%02x.%04x rtype=0x%02x => online=0 rc=EAGAIN\n",
			   FUNC0(zq->queue->qid),
			   FUNC1(zq->queue->qid),
			   (int) msg->hdr.type);
		return -EAGAIN;	/* repeat the request on a different device. */
	}
}