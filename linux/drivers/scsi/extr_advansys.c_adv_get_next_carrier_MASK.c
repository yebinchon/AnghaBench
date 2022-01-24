#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct adv_dvc_var {TYPE_1__* carr_freelist; } ;
struct TYPE_4__ {int /*<<< orphan*/  next_vpa; } ;
typedef  TYPE_1__ ADV_CARR_T ;

/* Variables and functions */
 int /*<<< orphan*/  ADV_CQ_STOPPER ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct adv_dvc_var*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ADV_CARR_T *FUNC4(struct adv_dvc_var *adv_dvc)
{
	ADV_CARR_T *carrp = adv_dvc->carr_freelist;
	u32 next_vpa = FUNC3(carrp->next_vpa);

	if (next_vpa == 0 || next_vpa == ~0) {
		FUNC0(1, "invalid vpa offset 0x%x\n", next_vpa);
		return NULL;
	}

	adv_dvc->carr_freelist = FUNC1(adv_dvc, next_vpa);
	/*
	 * insert stopper carrier to terminate list
	 */
	carrp->next_vpa = FUNC2(ADV_CQ_STOPPER);

	return carrp;
}