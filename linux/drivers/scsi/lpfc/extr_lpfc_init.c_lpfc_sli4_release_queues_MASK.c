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
struct lpfc_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lpfc_queue**) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_queue**) ; 

__attribute__((used)) static inline void
FUNC2(struct lpfc_queue ***qs, int max)
{
	int idx;

	if (*qs == NULL)
		return;

	for (idx = 0; idx < max; idx++)
		FUNC0(&(*qs)[idx]);

	FUNC1(*qs);
	*qs = NULL;
}