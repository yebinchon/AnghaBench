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
struct cmbe {int dummy; } ;
struct cmb_data {int size; struct cmb_data* last_block; struct cmbe* hw_block; } ;
struct ccw_device {int /*<<< orphan*/  ccwlock; TYPE_1__* private; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct TYPE_3__ {int /*<<< orphan*/  cmb_list; struct cmb_data* cmb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMF_ON ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__ cmb_area ; 
 int /*<<< orphan*/  cmbe_cache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cmb_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cmbe*) ; 
 struct cmbe* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct ccw_device *cdev)
{
	struct cmb_data *cmb_data;
	struct cmbe *cmbe;
	int ret = -ENOMEM;

	cmbe = FUNC3(cmbe_cache, GFP_KERNEL);
	if (!cmbe)
		return ret;

	cmb_data = FUNC4(sizeof(*cmb_data), GFP_KERNEL);
	if (!cmb_data)
		goto out_free;

	cmb_data->last_block = FUNC4(sizeof(struct cmbe), GFP_KERNEL);
	if (!cmb_data->last_block)
		goto out_free;

	cmb_data->size = sizeof(*cmbe);
	cmb_data->hw_block = cmbe;

	FUNC7(&cmb_area.lock);
	FUNC8(cdev->ccwlock);
	if (cdev->private->cmb)
		goto out_unlock;

	cdev->private->cmb = cmb_data;

	/* activate global measurement if this is the first channel */
	if (FUNC6(&cmb_area.list))
		FUNC0(NULL, CMF_ON);
	FUNC5(&cdev->private->cmb_list, &cmb_area.list);

	FUNC10(cdev->ccwlock);
	FUNC9(&cmb_area.lock);
	return 0;

out_unlock:
	FUNC10(cdev->ccwlock);
	FUNC9(&cmb_area.lock);
	ret = -EBUSY;
out_free:
	if (cmb_data)
		FUNC1(cmb_data->last_block);
	FUNC1(cmb_data);
	FUNC2(cmbe_cache, cmbe);

	return ret;
}