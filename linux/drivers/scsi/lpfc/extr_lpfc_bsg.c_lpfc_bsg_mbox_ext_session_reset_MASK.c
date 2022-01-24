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
struct lpfc_mbox_ext_buf_ctx {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  ext_dmabuf_list; int /*<<< orphan*/  mbx_dmabuf; } ;
struct lpfc_hba {TYPE_1__ mbox_ext_buf_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ LPFC_BSG_MBOX_IDLE ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct lpfc_hba *phba)
{
	if (phba->mbox_ext_buf_ctx.state == LPFC_BSG_MBOX_IDLE)
		return;

	/* free all memory, including dma buffers */
	FUNC2(phba,
				    &phba->mbox_ext_buf_ctx.ext_dmabuf_list);
	FUNC1(phba, phba->mbox_ext_buf_ctx.mbx_dmabuf);
	/* multi-buffer write mailbox command pass-through complete */
	FUNC3((char *)&phba->mbox_ext_buf_ctx, 0,
	       sizeof(struct lpfc_mbox_ext_buf_ctx));
	FUNC0(&phba->mbox_ext_buf_ctx.ext_dmabuf_list);

	return;
}