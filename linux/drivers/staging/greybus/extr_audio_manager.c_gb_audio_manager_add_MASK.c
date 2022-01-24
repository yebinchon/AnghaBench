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
struct gb_audio_manager_module_descriptor {int dummy; } ;
struct gb_audio_manager_module {int id; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct gb_audio_manager_module**,int /*<<< orphan*/ ,int,struct gb_audio_manager_module_descriptor*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  manager_kset ; 
 int /*<<< orphan*/  module_id ; 
 int /*<<< orphan*/  modules_list ; 
 int /*<<< orphan*/  modules_rwsem ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct gb_audio_manager_module_descriptor *desc)
{
	struct gb_audio_manager_module *module;
	int id;
	int err;

	id = FUNC2(&module_id, 0, 0, GFP_KERNEL);
	if (id < 0)
		return id;

	err = FUNC1(&module, manager_kset,
					     id, desc);
	if (err) {
		FUNC3(&module_id, id);
		return err;
	}

	/* Add it to the list */
	FUNC0(&modules_rwsem);
	FUNC4(&module->list, &modules_list);
	FUNC5(&modules_rwsem);

	return module->id;
}