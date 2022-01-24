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
typedef  int /*<<< orphan*/  u32 ;
struct beiscsi_hba {int /*<<< orphan*/  pcidev; scalar_t__ csr_va; } ;

/* Variables and functions */
 scalar_t__ SLIPORT_SEMAPHORE_OFFSET_BEx ; 
 int /*<<< orphan*/  SLIPORT_SEMAPHORE_OFFSET_SH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC3(struct beiscsi_hba *phba)
{
	u32 sem;

	if (FUNC1(phba))
		sem = FUNC0(phba->csr_va + SLIPORT_SEMAPHORE_OFFSET_BEx);
	else
		FUNC2(phba->pcidev,
				      SLIPORT_SEMAPHORE_OFFSET_SH, &sem);
	return sem;
}