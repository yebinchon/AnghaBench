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
struct mutex {int dummy; } ;
struct f_uvc_opts {int streaming_interface; struct mutex lock; } ;
struct config_item {struct config_item* ci_parent; } ;
struct config_group {TYPE_1__* cg_subsys; } ;
typedef  int ssize_t ;
struct TYPE_2__ {struct mutex su_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC1 (struct mutex*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 struct config_group* FUNC3 (struct config_item*) ; 
 struct f_uvc_opts* FUNC4 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC5(
	struct config_item *item, char *page)
{
	struct config_group *group = FUNC3(item);
	struct mutex *su_mutex = &group->cg_subsys->su_mutex;
	struct config_item *opts_item;
	struct f_uvc_opts *opts;
	int result = 0;

	FUNC0(su_mutex); /* for navigating configfs hierarchy */

	opts_item = item->ci_parent;
	opts = FUNC4(opts_item);

	FUNC0(&opts->lock);
	result += FUNC2(page, "%u\n", opts->streaming_interface);
	FUNC1(&opts->lock);

	FUNC1(su_mutex);

	return result;
}