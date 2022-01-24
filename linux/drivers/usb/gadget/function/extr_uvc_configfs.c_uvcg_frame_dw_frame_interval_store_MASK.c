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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_13__ {int b_frame_interval_type; } ;
struct TYPE_12__ {TYPE_7__* ci_parent; TYPE_2__* ci_group; } ;
struct uvcg_frame {int /*<<< orphan*/ * dw_frame_interval; TYPE_6__ frame; TYPE_5__ item; } ;
struct uvcg_format {scalar_t__ linked; } ;
struct mutex {int dummy; } ;
struct f_uvc_opts {struct mutex lock; scalar_t__ refcnt; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_14__ {TYPE_4__* ci_parent; } ;
struct TYPE_11__ {TYPE_3__* ci_parent; } ;
struct TYPE_10__ {struct config_item* ci_parent; } ;
struct TYPE_9__ {TYPE_1__* cg_subsys; } ;
struct TYPE_8__ {struct mutex su_mutex; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  __uvcg_count_frm_intrv ; 
 int /*<<< orphan*/  __uvcg_fill_frm_intrv ; 
 int FUNC0 (char const*,size_t,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC4 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct f_uvc_opts* FUNC6 (struct config_item*) ; 
 struct uvcg_format* FUNC7 (TYPE_7__*) ; 
 struct uvcg_frame* FUNC8 (struct config_item*) ; 
 int /*<<< orphan*/  uvcg_config_compare_u32 ; 

__attribute__((used)) static ssize_t FUNC9(struct config_item *item,
						  const char *page, size_t len)
{
	struct uvcg_frame *ch = FUNC8(item);
	struct f_uvc_opts *opts;
	struct config_item *opts_item;
	struct uvcg_format *fmt;
	struct mutex *su_mutex = &ch->item.ci_group->cg_subsys->su_mutex;
	int ret = 0, n = 0;
	u32 *frm_intrv, *tmp;

	FUNC3(su_mutex); /* for navigating configfs hierarchy */

	opts_item = ch->item.ci_parent->ci_parent->ci_parent->ci_parent;
	opts = FUNC6(opts_item);
	fmt = FUNC7(ch->item.ci_parent);

	FUNC3(&opts->lock);
	if (fmt->linked || opts->refcnt) {
		ret = -EBUSY;
		goto end;
	}

	ret = FUNC0(page, len, __uvcg_count_frm_intrv, &n);
	if (ret)
		goto end;

	tmp = frm_intrv = FUNC1(n, sizeof(u32), GFP_KERNEL);
	if (!frm_intrv) {
		ret = -ENOMEM;
		goto end;
	}

	ret = FUNC0(page, len, __uvcg_fill_frm_intrv, tmp);
	if (ret) {
		FUNC2(frm_intrv);
		goto end;
	}

	FUNC2(ch->dw_frame_interval);
	ch->dw_frame_interval = frm_intrv;
	ch->frame.b_frame_interval_type = n;
	FUNC5(ch->dw_frame_interval, n, sizeof(*ch->dw_frame_interval),
	     uvcg_config_compare_u32, NULL);
	ret = len;

end:
	FUNC4(&opts->lock);
	FUNC4(su_mutex);
	return ret;
}