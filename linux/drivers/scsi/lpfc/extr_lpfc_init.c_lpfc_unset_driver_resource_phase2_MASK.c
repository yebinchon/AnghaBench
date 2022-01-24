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
struct lpfc_hba {scalar_t__ worker_thread; int /*<<< orphan*/ * wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct lpfc_hba *phba)
{
	if (phba->wq) {
		FUNC1(phba->wq);
		FUNC0(phba->wq);
		phba->wq = NULL;
	}

	/* Stop kernel worker thread */
	if (phba->worker_thread)
		FUNC2(phba->worker_thread);
}