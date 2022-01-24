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
struct fc_lport {scalar_t__ retry_count; scalar_t__ max_retry_count; int e_d_tov; int /*<<< orphan*/  retry_work; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_EX_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_lport*) ; 
 unsigned long FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct fc_lport *lport, struct fc_frame *fp)
{
	unsigned long delay = 0;
	FUNC0(lport, "Error %ld in state %s, retries %d\n",
		     FUNC1(fp) ? -FUNC2(fp) : 0, FUNC4(lport),
		     lport->retry_count);

	if (FUNC2(fp) == -FC_EX_CLOSED)
		return;

	/*
	 * Memory allocation failure, or the exchange timed out
	 * or we received LS_RJT.
	 * Retry after delay
	 */
	if (lport->retry_count < lport->max_retry_count) {
		lport->retry_count++;
		if (!fp)
			delay = FUNC5(500);
		else
			delay =	FUNC5(lport->e_d_tov);

		FUNC6(&lport->retry_work, delay);
	} else
		FUNC3(lport);
}