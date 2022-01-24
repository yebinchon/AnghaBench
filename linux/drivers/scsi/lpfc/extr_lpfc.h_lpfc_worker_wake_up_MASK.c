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
struct lpfc_hba {int /*<<< orphan*/  work_waitq; int /*<<< orphan*/  data_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPFC_DATA_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC2(struct lpfc_hba *phba)
{
	/* Set the lpfc data pending flag */
	FUNC0(LPFC_DATA_READY, &phba->data_flags);

	/* Wake up worker thread */
	FUNC1(&phba->work_waitq);
	return;
}