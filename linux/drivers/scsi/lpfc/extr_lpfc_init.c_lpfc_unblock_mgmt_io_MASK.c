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
struct TYPE_2__ {int /*<<< orphan*/  sli_flag; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; TYPE_1__ sli; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPFC_BLOCK_MGMT_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC2(struct lpfc_hba * phba)
{
	unsigned long iflag;

	FUNC0(&phba->hbalock, iflag);
	phba->sli.sli_flag &= ~LPFC_BLOCK_MGMT_IO;
	FUNC1(&phba->hbalock, iflag);
}