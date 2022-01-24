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
struct rcom_config {int /*<<< orphan*/  rf_generation; int /*<<< orphan*/  rf_our_slot; } ;
struct dlm_rcom {int /*<<< orphan*/  rc_header; scalar_t__ rc_buf; } ;
struct dlm_member {int /*<<< orphan*/  generation; int /*<<< orphan*/  slot; } ;
struct dlm_ls {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct dlm_ls *ls, struct dlm_rcom *rc,
		   struct dlm_member *memb)
{
	struct rcom_config *rf = (struct rcom_config *)rc->rc_buf;

	if (!FUNC0(&rc->rc_header))
		return;

	memb->slot = FUNC1(rf->rf_our_slot);
	memb->generation = FUNC2(rf->rf_generation);
}