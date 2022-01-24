#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uvcg_streaming_header {int /*<<< orphan*/  linked; } ;
typedef  int /*<<< orphan*/ **** uvc_descriptor_header ;
struct mutex {int dummy; } ;
struct f_uvc_opts {struct mutex lock; scalar_t__ refcnt; } ;
struct config_item {struct config_item* ci_parent; TYPE_2__* ci_group; } ;
struct TYPE_4__ {TYPE_1__* cg_subsys; } ;
struct TYPE_3__ {struct mutex su_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/ ********* FUNC0 (struct config_item*,struct f_uvc_opts*) ; 
 struct config_item* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ******) ; 
 int /*<<< orphan*/  FUNC4 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC5 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC6 (struct config_item*) ; 
 struct f_uvc_opts* FUNC7 (struct config_item*) ; 
 struct uvcg_streaming_header* FUNC8 (struct config_item*) ; 

__attribute__((used)) static void FUNC9(struct config_item *src,
					  struct config_item *target)
{
	struct config_item *streaming, *header;
	struct f_uvc_opts *opts;
	struct mutex *su_mutex = &src->ci_group->cg_subsys->su_mutex;
	struct uvc_descriptor_header ***class_array;
	struct uvcg_streaming_header *target_hdr;

	FUNC4(su_mutex); /* for navigating configfs hierarchy */

	streaming = src->ci_parent->ci_parent;
	header = FUNC1(FUNC6(streaming), "header");
	if (!header || target->ci_parent != header)
		goto out;

	opts = FUNC7(streaming->ci_parent);

	FUNC4(&opts->lock);

	class_array = FUNC0(src, opts);
	if (!class_array || !*class_array)
		goto unlock;

	if (opts->refcnt)
		goto unlock;

	target_hdr = FUNC8(target);
	--target_hdr->linked;
	FUNC3(**class_array);
	FUNC3(*class_array);
	*class_array = NULL;

unlock:
	FUNC5(&opts->lock);
out:
	FUNC2(header);
	FUNC5(su_mutex);
}