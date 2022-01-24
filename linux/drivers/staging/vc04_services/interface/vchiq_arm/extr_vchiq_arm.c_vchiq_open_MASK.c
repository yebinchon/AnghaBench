#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vchiq_state {int dummy; } ;
struct inode {int dummy; } ;
struct file {TYPE_1__* private_data; } ;
typedef  TYPE_1__* VCHIQ_INSTANCE_T ;
struct TYPE_6__ {int /*<<< orphan*/  tgid; } ;
struct TYPE_5__ {int /*<<< orphan*/  bulk_waiter_list; int /*<<< orphan*/  bulk_waiter_list_mutex; int /*<<< orphan*/  completion_mutex; int /*<<< orphan*/  remove_event; int /*<<< orphan*/  insert_event; int /*<<< orphan*/  pid; struct vchiq_state* state; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vchiq_arm_log_level ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct vchiq_state* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	struct vchiq_state *state = FUNC5();
	VCHIQ_INSTANCE_T instance;

	FUNC7(vchiq_arm_log_level, "vchiq_open");

	if (!state) {
		FUNC6(vchiq_arm_log_level,
				"vchiq has no connection to VideoCore");
		return -ENOTCONN;
	}

	instance = FUNC2(sizeof(*instance), GFP_KERNEL);
	if (!instance)
		return -ENOMEM;

	instance->state = state;
	instance->pid = current->tgid;

	FUNC4(instance);

	FUNC1(&instance->insert_event);
	FUNC1(&instance->remove_event);
	FUNC3(&instance->completion_mutex);
	FUNC3(&instance->bulk_waiter_list_mutex);
	FUNC0(&instance->bulk_waiter_list);

	file->private_data = instance;

	return 0;
}