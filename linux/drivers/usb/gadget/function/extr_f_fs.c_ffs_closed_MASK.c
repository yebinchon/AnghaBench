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
struct ffs_dev {int desc_ready; struct f_fs_opts* opts; int /*<<< orphan*/  (* ffs_closed_callback ) (struct ffs_data*) ;int /*<<< orphan*/ * ffs_data; } ;
struct ffs_data {int /*<<< orphan*/  flags; struct ffs_dev* private_data; } ;
struct TYPE_6__ {TYPE_1__* ci_parent; int /*<<< orphan*/  ci_kref; } ;
struct TYPE_7__ {TYPE_2__ cg_item; } ;
struct TYPE_8__ {TYPE_3__ group; } ;
struct f_fs_opts {TYPE_4__ func_inst; scalar_t__ no_configfs; } ;
struct config_item {int dummy; } ;
struct TYPE_5__ {struct config_item* ci_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FFS_FL_BOUND ; 
 int /*<<< orphan*/  FFS_FL_CALL_CLOSED_CALLBACK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ffs_data*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct config_item*) ; 

__attribute__((used)) static void FUNC8(struct ffs_data *ffs)
{
	struct ffs_dev *ffs_obj;
	struct f_fs_opts *opts;
	struct config_item *ci;

	FUNC0();
	FUNC1();

	ffs_obj = ffs->private_data;
	if (!ffs_obj)
		goto done;

	ffs_obj->desc_ready = false;
	ffs_obj->ffs_data = NULL;

	if (FUNC5(FFS_FL_CALL_CLOSED_CALLBACK, &ffs->flags) &&
	    ffs_obj->ffs_closed_callback)
		ffs_obj->ffs_closed_callback(ffs);

	if (ffs_obj->opts)
		opts = ffs_obj->opts;
	else
		goto done;

	if (opts->no_configfs || !opts->func_inst.group.cg_item.ci_parent
	    || !FUNC3(&opts->func_inst.group.cg_item.ci_kref))
		goto done;

	ci = opts->func_inst.group.cg_item.ci_parent->ci_parent;
	FUNC2();

	if (FUNC6(FFS_FL_BOUND, &ffs->flags))
		FUNC7(ci);
	return;
done:
	FUNC2();
}