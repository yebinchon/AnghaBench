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
struct fc_seq {int dummy; } ;
struct fc_exch {int /*<<< orphan*/  arg; int /*<<< orphan*/  ex_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_exch*) ; 
 int FUNC1 (struct fc_exch*) ; 
 struct fc_exch* FUNC2 (struct fc_seq*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_seq*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct fc_seq *sp)
{
	struct fc_exch *ep = FUNC2(sp);
	int rc;

	FUNC4(&ep->ex_lock);
	rc = FUNC1(ep);
	FUNC5(&ep->ex_lock);

	FUNC3(sp, NULL, ep->arg);
	if (!rc)
		FUNC0(ep);
}