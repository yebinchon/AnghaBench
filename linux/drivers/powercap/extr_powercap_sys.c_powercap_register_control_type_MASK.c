#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct powercap_control_type_ops {int /*<<< orphan*/  release; } ;
struct TYPE_3__ {int /*<<< orphan*/ * class; } ;
struct powercap_control_type {int allocated; int /*<<< orphan*/  node; int /*<<< orphan*/  idr; TYPE_1__ dev; struct powercap_control_type_ops const* ops; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct powercap_control_type* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char const*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct powercap_control_type*) ; 
 struct powercap_control_type* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct powercap_control_type*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  powercap_class ; 
 int /*<<< orphan*/  powercap_cntrl_list ; 
 int /*<<< orphan*/  powercap_cntrl_list_lock ; 

struct powercap_control_type *FUNC12(
				struct powercap_control_type *control_type,
				const char *name,
				const struct powercap_control_type_ops *ops)
{
	int result;

	if (!name)
		return FUNC0(-EINVAL);
	if (control_type) {
		if (!ops || !ops->release)
			return FUNC0(-EINVAL);
		FUNC8(control_type, 0, sizeof(*control_type));
	} else {
		control_type = FUNC6(sizeof(*control_type), GFP_KERNEL);
		if (!control_type)
			return FUNC0(-ENOMEM);
		control_type->allocated = true;
	}
	FUNC9(&control_type->lock);
	control_type->ops = ops;
	FUNC1(&control_type->node);
	control_type->dev.class = &powercap_class;
	FUNC2(&control_type->dev, "%s", name);
	result = FUNC3(&control_type->dev);
	if (result) {
		if (control_type->allocated)
			FUNC5(control_type);
		return FUNC0(result);
	}
	FUNC4(&control_type->idr);

	FUNC10(&powercap_cntrl_list_lock);
	FUNC7(&control_type->node, &powercap_cntrl_list);
	FUNC11(&powercap_cntrl_list_lock);

	return control_type;
}