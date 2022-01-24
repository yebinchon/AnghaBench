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
struct cmd_priv {int cmd_seq; scalar_t__ rsp_cnt; scalar_t__ cmd_done_cnt; scalar_t__ cmd_issued_cnt; void* rsp_allocated_buf; void* rsp_buf; int /*<<< orphan*/ * cmd_allocated_buf; int /*<<< orphan*/ * cmd_buf; int /*<<< orphan*/  cmd_queue; int /*<<< orphan*/  terminate_cmdthread_comp; int /*<<< orphan*/  cmd_queue_comp; } ;
typedef  int addr_t ;

/* Variables and functions */
 int CMDBUFF_ALIGN_SZ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MAX_CMDSZ ; 
 scalar_t__ MAX_RSPSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC4(struct cmd_priv *pcmdpriv)
{
	FUNC1(&pcmdpriv->cmd_queue_comp);
	FUNC1(&pcmdpriv->terminate_cmdthread_comp);

	FUNC0(&(pcmdpriv->cmd_queue));

	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
	pcmdpriv->cmd_seq = 1;
	pcmdpriv->cmd_allocated_buf = FUNC3(MAX_CMDSZ + CMDBUFF_ALIGN_SZ,
					      GFP_ATOMIC);
	if (!pcmdpriv->cmd_allocated_buf)
		return -ENOMEM;
	pcmdpriv->cmd_buf = pcmdpriv->cmd_allocated_buf  +  CMDBUFF_ALIGN_SZ -
			    ((addr_t)(pcmdpriv->cmd_allocated_buf) &
			    (CMDBUFF_ALIGN_SZ - 1));
	pcmdpriv->rsp_allocated_buf = FUNC3(MAX_RSPSZ + 4, GFP_ATOMIC);
	if (!pcmdpriv->rsp_allocated_buf) {
		FUNC2(pcmdpriv->cmd_allocated_buf);
		pcmdpriv->cmd_allocated_buf = NULL;
		return -ENOMEM;
	}
	pcmdpriv->rsp_buf = pcmdpriv->rsp_allocated_buf  +  4 -
			    ((addr_t)(pcmdpriv->rsp_allocated_buf) & 3);
	pcmdpriv->cmd_issued_cnt = 0;
	pcmdpriv->cmd_done_cnt = 0;
	pcmdpriv->rsp_cnt = 0;
	return 0;
}