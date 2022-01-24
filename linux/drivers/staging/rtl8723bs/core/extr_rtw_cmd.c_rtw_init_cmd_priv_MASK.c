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
struct cmd_priv {int cmd_seq; int /*<<< orphan*/  sctx_mutex; scalar_t__ rsp_cnt; scalar_t__ cmd_done_cnt; scalar_t__ cmd_issued_cnt; void* rsp_allocated_buf; void* rsp_buf; void* cmd_allocated_buf; void* cmd_buf; int /*<<< orphan*/  cmd_queue; int /*<<< orphan*/  terminate_cmdthread_comp; int /*<<< orphan*/  cmd_queue_comp; } ;
typedef  int SIZE_PTR ;

/* Variables and functions */
 int CMDBUFF_ALIGN_SZ ; 
 int ENOMEM ; 
 scalar_t__ MAX_CMDSZ ; 
 scalar_t__ MAX_RSPSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (scalar_t__) ; 

int FUNC4(struct	cmd_priv *pcmdpriv)
{
	int res = 0;

	FUNC1(&pcmdpriv->cmd_queue_comp);
	FUNC1(&pcmdpriv->terminate_cmdthread_comp);

	FUNC0(&(pcmdpriv->cmd_queue));

	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */

	pcmdpriv->cmd_seq = 1;

	pcmdpriv->cmd_allocated_buf = FUNC3(MAX_CMDSZ + CMDBUFF_ALIGN_SZ);

	if (!pcmdpriv->cmd_allocated_buf) {
		res = -ENOMEM;
		goto exit;
	}

	pcmdpriv->cmd_buf = pcmdpriv->cmd_allocated_buf  +  CMDBUFF_ALIGN_SZ - ((SIZE_PTR)(pcmdpriv->cmd_allocated_buf) & (CMDBUFF_ALIGN_SZ-1));

	pcmdpriv->rsp_allocated_buf = FUNC3(MAX_RSPSZ + 4);

	if (!pcmdpriv->rsp_allocated_buf) {
		res = -ENOMEM;
		goto exit;
	}

	pcmdpriv->rsp_buf = pcmdpriv->rsp_allocated_buf  +  4 - ((SIZE_PTR)(pcmdpriv->rsp_allocated_buf) & 3);

	pcmdpriv->cmd_issued_cnt = pcmdpriv->cmd_done_cnt = pcmdpriv->rsp_cnt = 0;

	FUNC2(&pcmdpriv->sctx_mutex);
exit:
	return res;
}