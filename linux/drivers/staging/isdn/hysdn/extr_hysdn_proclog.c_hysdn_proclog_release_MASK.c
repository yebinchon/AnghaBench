#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct procdata {int /*<<< orphan*/  log_name; scalar_t__ log; } ;
struct TYPE_3__ {int /*<<< orphan*/ * proclog; } ;
typedef  TYPE_1__ hysdn_card ;

/* Variables and functions */
 int /*<<< orphan*/  hysdn_proc_entry ; 
 int /*<<< orphan*/  FUNC0 (struct procdata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(hysdn_card *card)
{
	struct procdata *pd;

	if ((pd = (struct procdata *) card->proclog) != NULL) {
		if (pd->log)
			FUNC1(pd->log_name, hysdn_proc_entry);
		FUNC0(pd);	/* release memory */
		card->proclog = NULL;
	}
}