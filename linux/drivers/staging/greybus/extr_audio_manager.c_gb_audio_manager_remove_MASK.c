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
struct gb_audio_manager_module {int /*<<< orphan*/  kobj; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct gb_audio_manager_module* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  module_id ; 
 int /*<<< orphan*/  modules_rwsem ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(int id)
{
	struct gb_audio_manager_module *module;

	FUNC0(&modules_rwsem);

	module = FUNC1(id);
	if (!module) {
		FUNC5(&modules_rwsem);
		return -EINVAL;
	}
	FUNC4(&module->list);
	FUNC3(&module->kobj);
	FUNC5(&modules_rwsem);
	FUNC2(&module_id, id);
	return 0;
}