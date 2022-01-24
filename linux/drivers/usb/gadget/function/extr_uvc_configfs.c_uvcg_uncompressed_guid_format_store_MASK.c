#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  guidFormat; } ;
struct TYPE_11__ {TYPE_3__* ci_parent; } ;
struct TYPE_12__ {TYPE_4__ cg_item; TYPE_1__* cg_subsys; } ;
struct TYPE_13__ {scalar_t__ linked; TYPE_5__ group; } ;
struct uvcg_uncompressed {TYPE_7__ desc; TYPE_6__ fmt; } ;
struct mutex {int dummy; } ;
struct f_uvc_opts {struct mutex lock; scalar_t__ refcnt; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_10__ {TYPE_2__* ci_parent; } ;
struct TYPE_9__ {struct config_item* ci_parent; } ;
struct TYPE_8__ {struct mutex su_mutex; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC3 (struct mutex*) ; 
 struct f_uvc_opts* FUNC4 (struct config_item*) ; 
 struct uvcg_uncompressed* FUNC5 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC6(struct config_item *item,
						   const char *page, size_t len)
{
	struct uvcg_uncompressed *ch = FUNC5(item);
	struct f_uvc_opts *opts;
	struct config_item *opts_item;
	struct mutex *su_mutex = &ch->fmt.group.cg_subsys->su_mutex;
	int ret;

	FUNC2(su_mutex); /* for navigating configfs hierarchy */

	opts_item = ch->fmt.group.cg_item.ci_parent->ci_parent->ci_parent;
	opts = FUNC4(opts_item);

	FUNC2(&opts->lock);
	if (ch->fmt.linked || opts->refcnt) {
		ret = -EBUSY;
		goto end;
	}

	FUNC0(ch->desc.guidFormat, page,
	       FUNC1(sizeof(ch->desc.guidFormat), len));
	ret = sizeof(ch->desc.guidFormat);

end:
	FUNC3(&opts->lock);
	FUNC3(su_mutex);
	return ret;
}