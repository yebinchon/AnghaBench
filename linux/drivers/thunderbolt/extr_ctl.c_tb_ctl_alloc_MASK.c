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
struct tb_nhi {TYPE_1__* pdev; } ;
struct tb_ctl {TYPE_3__** rx_packets; int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; int /*<<< orphan*/  frame_pool; int /*<<< orphan*/  request_queue; int /*<<< orphan*/  request_queue_lock; void* callback_data; int /*<<< orphan*/  callback; struct tb_nhi* nhi; } ;
typedef  int /*<<< orphan*/  event_cb ;
struct TYPE_5__ {int /*<<< orphan*/  callback; } ;
struct TYPE_6__ {TYPE_2__ frame; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RING_FLAG_NO_SUSPEND ; 
 int TB_CTL_RX_PKG_COUNT ; 
 int /*<<< orphan*/  TB_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct tb_ctl* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tb_ctl*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_ctl*) ; 
 TYPE_3__* FUNC6 (struct tb_ctl*) ; 
 int /*<<< orphan*/  tb_ctl_rx_callback ; 
 int /*<<< orphan*/  FUNC7 (struct tb_nhi*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct tb_nhi*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

struct tb_ctl *FUNC9(struct tb_nhi *nhi, event_cb cb, void *cb_data)
{
	int i;
	struct tb_ctl *ctl = FUNC2(sizeof(*ctl), GFP_KERNEL);
	if (!ctl)
		return NULL;
	ctl->nhi = nhi;
	ctl->callback = cb;
	ctl->callback_data = cb_data;

	FUNC3(&ctl->request_queue_lock);
	FUNC0(&ctl->request_queue);
	ctl->frame_pool = FUNC1("thunderbolt_ctl", &nhi->pdev->dev,
					 TB_FRAME_SIZE, 4, 0);
	if (!ctl->frame_pool)
		goto err;

	ctl->tx = FUNC8(nhi, 0, 10, RING_FLAG_NO_SUSPEND);
	if (!ctl->tx)
		goto err;

	ctl->rx = FUNC7(nhi, 0, 10, RING_FLAG_NO_SUSPEND, 0xffff,
				0xffff, NULL, NULL);
	if (!ctl->rx)
		goto err;

	for (i = 0; i < TB_CTL_RX_PKG_COUNT; i++) {
		ctl->rx_packets[i] = FUNC6(ctl);
		if (!ctl->rx_packets[i])
			goto err;
		ctl->rx_packets[i]->frame.callback = tb_ctl_rx_callback;
	}

	FUNC4(ctl, "control channel created\n");
	return ctl;
err:
	FUNC5(ctl);
	return NULL;
}