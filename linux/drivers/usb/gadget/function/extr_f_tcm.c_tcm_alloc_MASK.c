#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_function_instance {int dummy; } ;
struct usb_function {char* name; int /*<<< orphan*/  free_func; int /*<<< orphan*/  disable; int /*<<< orphan*/  setup; int /*<<< orphan*/  set_alt; int /*<<< orphan*/  unbind; int /*<<< orphan*/  bind; } ;
struct f_uas {struct usb_function function; int /*<<< orphan*/  tpg; } ;
struct TYPE_2__ {int /*<<< orphan*/  tpg; struct usb_function_instance* func_inst; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct usb_function* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int TPG_INSTANCES ; 
 struct f_uas* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcm_bind ; 
 int /*<<< orphan*/  tcm_disable ; 
 int /*<<< orphan*/  tcm_free ; 
 int /*<<< orphan*/  tcm_set_alt ; 
 int /*<<< orphan*/  tcm_setup ; 
 int /*<<< orphan*/  tcm_unbind ; 
 TYPE_1__* tpg_instances ; 
 int /*<<< orphan*/  tpg_instances_lock ; 

__attribute__((used)) static struct usb_function *FUNC4(struct usb_function_instance *fi)
{
	struct f_uas *fu;
	unsigned i;

	FUNC2(&tpg_instances_lock);
	for (i = 0; i < TPG_INSTANCES; ++i)
		if (tpg_instances[i].func_inst == fi)
			break;
	if (i == TPG_INSTANCES) {
		FUNC3(&tpg_instances_lock);
		return FUNC0(-ENODEV);
	}

	fu = FUNC1(sizeof(*fu), GFP_KERNEL);
	if (!fu) {
		FUNC3(&tpg_instances_lock);
		return FUNC0(-ENOMEM);
	}

	fu->function.name = "Target Function";
	fu->function.bind = tcm_bind;
	fu->function.unbind = tcm_unbind;
	fu->function.set_alt = tcm_set_alt;
	fu->function.setup = tcm_setup;
	fu->function.disable = tcm_disable;
	fu->function.free_func = tcm_free;
	fu->tpg = tpg_instances[i].tpg;
	FUNC3(&tpg_instances_lock);

	return &fu->function;
}