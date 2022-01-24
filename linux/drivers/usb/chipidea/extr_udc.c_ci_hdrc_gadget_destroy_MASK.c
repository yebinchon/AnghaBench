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
struct ci_hdrc {int /*<<< orphan*/  qh_pool; int /*<<< orphan*/  td_pool; int /*<<< orphan*/  gadget; int /*<<< orphan*/ * roles; } ;

/* Variables and functions */
 size_t CI_ROLE_GADGET ; 
 int /*<<< orphan*/  FUNC0 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ci_hdrc *ci)
{
	if (!ci->roles[CI_ROLE_GADGET])
		return;

	FUNC2(&ci->gadget);

	FUNC0(ci);

	FUNC1(ci->td_pool);
	FUNC1(ci->qh_pool);
}