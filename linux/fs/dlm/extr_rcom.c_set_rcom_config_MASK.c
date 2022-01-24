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
typedef  int /*<<< orphan*/  uint32_t ;
struct rcom_config {void* rf_generation; void* rf_num_slots; void* rf_our_slot; void* rf_lsflags; void* rf_lvblen; } ;
struct dlm_ls {int /*<<< orphan*/  ls_generation; int /*<<< orphan*/  ls_slot; int /*<<< orphan*/  ls_exflags; int /*<<< orphan*/  ls_lvblen; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dlm_ls *ls, struct rcom_config *rf,
			    uint32_t num_slots)
{
	rf->rf_lvblen = FUNC1(ls->ls_lvblen);
	rf->rf_lsflags = FUNC1(ls->ls_exflags);

	rf->rf_our_slot = FUNC0(ls->ls_slot);
	rf->rf_num_slots = FUNC0(num_slots);
	rf->rf_generation =  FUNC1(ls->ls_generation);
}