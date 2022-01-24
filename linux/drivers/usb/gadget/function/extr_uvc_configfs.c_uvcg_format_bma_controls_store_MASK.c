#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* ci_parent; } ;
struct TYPE_10__ {TYPE_4__ cg_item; TYPE_1__* cg_subsys; } ;
struct uvcg_format {int /*<<< orphan*/  bmaControls; scalar_t__ linked; TYPE_5__ group; } ;
struct mutex {int dummy; } ;
struct f_uvc_opts {struct mutex lock; scalar_t__ refcnt; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_8__ {TYPE_2__* ci_parent; } ;
struct TYPE_7__ {struct config_item* ci_parent; } ;
struct TYPE_6__ {struct mutex su_mutex; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*) ; 
 struct f_uvc_opts* FUNC3 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC4(struct uvcg_format *ch,
					      const char *page, size_t len)
{
	struct f_uvc_opts *opts;
	struct config_item *opts_item;
	struct mutex *su_mutex = &ch->group.cg_subsys->su_mutex;
	int ret = -EINVAL;

	FUNC1(su_mutex); /* for navigating configfs hierarchy */

	opts_item = ch->group.cg_item.ci_parent->ci_parent->ci_parent;
	opts = FUNC3(opts_item);

	FUNC1(&opts->lock);
	if (ch->linked || opts->refcnt) {
		ret = -EBUSY;
		goto end;
	}

	if (len < 4 || *page != '0' ||
	    (*(page + 1) != 'x' && *(page + 1) != 'X'))
		goto end;
	ret = FUNC0(ch->bmaControls, page + 2, 1);
	if (ret < 0)
		goto end;
	ret = len;
end:
	FUNC2(&opts->lock);
	FUNC2(su_mutex);
	return ret;
}