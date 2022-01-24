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
struct gb_audio_manager_module {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct gb_audio_manager_module* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  modules_rwsem ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct gb_audio_manager_module *FUNC4(int id)
{
	struct gb_audio_manager_module *module;

	FUNC0(&modules_rwsem);
	module = FUNC1(id);
	FUNC2(&module->kobj);
	FUNC3(&modules_rwsem);
	return module;
}