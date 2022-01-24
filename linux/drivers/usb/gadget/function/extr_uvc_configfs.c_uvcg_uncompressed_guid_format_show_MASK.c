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
struct TYPE_11__ {int /*<<< orphan*/  guidFormat; } ;
struct TYPE_10__ {TYPE_2__* ci_parent; } ;
struct TYPE_14__ {TYPE_3__ cg_item; TYPE_5__* cg_subsys; } ;
struct TYPE_13__ {TYPE_7__ group; } ;
struct uvcg_uncompressed {TYPE_4__ desc; TYPE_6__ fmt; } ;
struct mutex {int dummy; } ;
struct f_uvc_opts {struct mutex lock; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_12__ {struct mutex su_mutex; } ;
struct TYPE_9__ {TYPE_1__* ci_parent; } ;
struct TYPE_8__ {struct config_item* ci_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*) ; 
 struct f_uvc_opts* FUNC3 (struct config_item*) ; 
 struct uvcg_uncompressed* FUNC4 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC5(struct config_item *item,
							char *page)
{
	struct uvcg_uncompressed *ch = FUNC4(item);
	struct f_uvc_opts *opts;
	struct config_item *opts_item;
	struct mutex *su_mutex = &ch->fmt.group.cg_subsys->su_mutex;

	FUNC1(su_mutex); /* for navigating configfs hierarchy */

	opts_item = ch->fmt.group.cg_item.ci_parent->ci_parent->ci_parent;
	opts = FUNC3(opts_item);

	FUNC1(&opts->lock);
	FUNC0(page, ch->desc.guidFormat, sizeof(ch->desc.guidFormat));
	FUNC2(&opts->lock);

	FUNC2(su_mutex);

	return sizeof(ch->desc.guidFormat);
}