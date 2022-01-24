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
struct fc_exch {int /*<<< orphan*/  ex_lock; } ;

/* Variables and functions */
 struct fc_exch* FUNC0 (struct fc_seq*) ; 
 struct fc_seq* FUNC1 (struct fc_seq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct fc_seq *FUNC4(struct fc_seq *sp)
{
	struct fc_exch *ep = FUNC0(sp);

	FUNC2(&ep->ex_lock);
	sp = FUNC1(sp);
	FUNC3(&ep->ex_lock);

	return sp;
}