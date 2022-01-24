#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct cmdq_pkt* data; int /*<<< orphan*/  cb; } ;
struct TYPE_6__ {void* data; int /*<<< orphan*/  cb; } ;
struct cmdq_pkt {int /*<<< orphan*/  cmd_buf_size; int /*<<< orphan*/  pa_base; TYPE_2__ async_cb; TYPE_1__ cb; scalar_t__ cl; } ;
struct cmdq_client {scalar_t__ timeout_ms; TYPE_4__* chan; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; int /*<<< orphan*/  pkt_cnt; } ;
typedef  int /*<<< orphan*/  cmdq_async_flush_cb ;
struct TYPE_9__ {TYPE_3__* mbox; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CMDQ_NO_TIMEOUT ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int FUNC0 (struct cmdq_pkt*) ; 
 int /*<<< orphan*/  cmdq_pkt_flush_async_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,struct cmdq_pkt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(struct cmdq_pkt *pkt, cmdq_async_flush_cb cb,
			 void *data)
{
	int err;
	unsigned long flags = 0;
	struct cmdq_client *client = (struct cmdq_client *)pkt->cl;

	err = FUNC0(pkt);
	if (err < 0)
		return err;

	pkt->cb.cb = cb;
	pkt->cb.data = data;
	pkt->async_cb.cb = cmdq_pkt_flush_async_cb;
	pkt->async_cb.data = pkt;

	FUNC1(client->chan->mbox->dev, pkt->pa_base,
				   pkt->cmd_buf_size, DMA_TO_DEVICE);

	if (client->timeout_ms != CMDQ_NO_TIMEOUT) {
		FUNC6(&client->lock, flags);
		if (client->pkt_cnt++ == 0)
			FUNC4(&client->timer, jiffies +
				  FUNC5(client->timeout_ms));
		FUNC7(&client->lock, flags);
	}

	FUNC3(client->chan, pkt);
	/* We can send next packet immediately, so just call txdone. */
	FUNC2(client->chan, 0);

	return 0;
}