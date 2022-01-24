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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct rqb_dmabuf {int /*<<< orphan*/  hbuf; } ;
struct lpfc_hba {scalar_t__ nvmet_support; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,struct rqb_dmabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ *) ; 

void
FUNC2(struct lpfc_hba *phba,
			   uint32_t idx,
			   struct rqb_dmabuf *nvmebuf,
			   uint64_t isr_timestamp,
			   uint8_t cqflag)
{
	if (phba->nvmet_support == 0) {
		FUNC1(phba, &nvmebuf->hbuf);
		return;
	}
	FUNC0(phba, idx, nvmebuf, isr_timestamp, cqflag);
}