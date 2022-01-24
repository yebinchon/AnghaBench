#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct uvc_processing_unit_descriptor {int bControlSize; int* bmControls; } ;
struct mutex {int dummy; } ;
struct f_uvc_opts {struct mutex lock; struct uvc_processing_unit_descriptor uvc_processing; } ;
struct config_item {int dummy; } ;
struct TYPE_8__ {TYPE_3__* ci_parent; } ;
struct config_group {TYPE_4__ cg_item; TYPE_1__* cg_subsys; } ;
typedef  int ssize_t ;
struct TYPE_7__ {TYPE_2__* ci_parent; } ;
struct TYPE_6__ {struct config_item* ci_parent; } ;
struct TYPE_5__ {struct mutex su_mutex; } ;

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
	struct f_uvc_opts *opts;
	struct config_item *opts_item;
	struct mutex *su_mutex = &group->cg_subsys->su_mutex;
	struct uvc_processing_unit_descriptor *pd;
	int result, i;
	char *pg = page;

	FUNC0(su_mutex); /* for navigating configfs hierarchy */

	opts_item = group->cg_item.ci_parent->ci_parent->ci_parent;
	opts = FUNC4(opts_item);
	pd = &opts->uvc_processing;

	FUNC0(&opts->lock);
	for (result = 0, i = 0; i < pd->bControlSize; ++i) {
		result += FUNC2(pg, "%u\n", pd->bmControls[i]);
		pg = page + result;
	}
	FUNC1(&opts->lock);

	FUNC1(su_mutex);

	return result;
}