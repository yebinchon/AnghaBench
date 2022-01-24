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
typedef  size_t uint32_t ;
struct lpfc_hba {TYPE_1__* hbqs; } ;
struct hbq_dmabuf {int tag; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* hbq_free_buffer ) (struct lpfc_hba*,struct hbq_dmabuf*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct lpfc_hba*,size_t,struct hbq_dmabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,struct hbq_dmabuf*) ; 

void
FUNC2(struct lpfc_hba *phba, struct hbq_dmabuf *hbq_buffer)
{
	uint32_t hbqno;

	if (hbq_buffer) {
		hbqno = hbq_buffer->tag >> 16;
		if (FUNC0(phba, hbqno, hbq_buffer))
			(phba->hbqs[hbqno].hbq_free_buffer)(phba, hbq_buffer);
	}
}