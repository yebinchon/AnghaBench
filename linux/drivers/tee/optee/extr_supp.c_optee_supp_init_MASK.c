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
struct optee_supp {int req_id; int /*<<< orphan*/  reqs; int /*<<< orphan*/  idr; int /*<<< orphan*/  reqs_c; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct optee_supp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct optee_supp *supp)
{
	FUNC3(supp, 0, sizeof(*supp));
	FUNC4(&supp->mutex);
	FUNC2(&supp->reqs_c);
	FUNC1(&supp->idr);
	FUNC0(&supp->reqs);
	supp->req_id = -1;
}