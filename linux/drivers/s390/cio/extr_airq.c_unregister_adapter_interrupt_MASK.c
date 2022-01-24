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
struct airq_struct {int flags; int /*<<< orphan*/ * lsi_ptr; int /*<<< orphan*/  isc; int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  dbf_txt ;

/* Variables and functions */
 int AIRQ_PTR_ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  airq_lists_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,struct airq_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(struct airq_struct *airq)
{
	char dbf_txt[32];

	if (FUNC2(&airq->list))
		return;
	FUNC5(dbf_txt, sizeof(dbf_txt), "urairq:%p", airq);
	FUNC0(4, dbf_txt);
	FUNC6(&airq_lists_lock);
	FUNC1(&airq->list);
	FUNC7(&airq_lists_lock);
	FUNC8();
	FUNC3(airq->isc);
	if (airq->flags & AIRQ_PTR_ALLOCATED) {
		FUNC4(airq->lsi_ptr);
		airq->lsi_ptr = NULL;
		airq->flags &= ~AIRQ_PTR_ALLOCATED;
	}
}