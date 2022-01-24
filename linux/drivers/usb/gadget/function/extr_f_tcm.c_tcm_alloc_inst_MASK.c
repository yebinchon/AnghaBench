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
struct usb_function_instance {int /*<<< orphan*/  group; int /*<<< orphan*/  free_func_inst; int /*<<< orphan*/  set_inst_name; } ;
struct f_tcm_opts {struct usb_function_instance func_inst; int /*<<< orphan*/  tcm_unregister_callback; int /*<<< orphan*/  tcm_register_callback; int /*<<< orphan*/  dep_lock; } ;
struct TYPE_2__ {struct usb_function_instance* func_inst; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct usb_function_instance* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TPG_INSTANCES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct f_tcm_opts*) ; 
 struct f_tcm_opts* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcm_free_inst ; 
 int /*<<< orphan*/  tcm_func_type ; 
 int /*<<< orphan*/  tcm_register_callback ; 
 int /*<<< orphan*/  tcm_set_name ; 
 int /*<<< orphan*/  tcm_unregister_callback ; 
 TYPE_1__* tpg_instances ; 
 int /*<<< orphan*/  tpg_instances_lock ; 

__attribute__((used)) static struct usb_function_instance *FUNC7(void)
{
	struct f_tcm_opts *opts;
	int i;


	opts = FUNC3(sizeof(*opts), GFP_KERNEL);
	if (!opts)
		return FUNC0(-ENOMEM);

	FUNC5(&tpg_instances_lock);
	for (i = 0; i < TPG_INSTANCES; ++i)
		if (!tpg_instances[i].func_inst)
			break;

	if (i == TPG_INSTANCES) {
		FUNC6(&tpg_instances_lock);
		FUNC2(opts);
		return FUNC0(-EBUSY);
	}
	tpg_instances[i].func_inst = &opts->func_inst;
	FUNC6(&tpg_instances_lock);

	FUNC4(&opts->dep_lock);
	opts->func_inst.set_inst_name = tcm_set_name;
	opts->func_inst.free_func_inst = tcm_free_inst;
	opts->tcm_register_callback = tcm_register_callback;
	opts->tcm_unregister_callback = tcm_unregister_callback;

	FUNC1(&opts->func_inst.group, "",
			&tcm_func_type);

	return &opts->func_inst;
}