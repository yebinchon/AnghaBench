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
struct mfb_info {scalar_t__ count; struct fsl_diu_data* parent; } ;
struct fsl_diu_data {TYPE_2__* diu_reg; TYPE_1__* fsl_diu_info; } ;
struct fb_info {struct mfb_info* par; } ;
struct TYPE_4__ {int /*<<< orphan*/  int_mask; } ;
struct TYPE_3__ {struct mfb_info* par; } ;

/* Variables and functions */
 int NUM_AOIS ; 
 int /*<<< orphan*/  diu_lock ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct fb_info *info, int user)
{
	struct mfb_info *mfbi = info->par;
	int res = 0;

	FUNC2(&diu_lock);
	mfbi->count--;
	if (mfbi->count == 0) {
		struct fsl_diu_data *data = mfbi->parent;
		bool disable = true;
		int i;

		/* Disable interrupts only if all AOIs are closed */
		for (i = 0; i < NUM_AOIS; i++) {
			struct mfb_info *mi = data->fsl_diu_info[i].par;

			if (mi->count)
				disable = false;
		}
		if (disable)
			FUNC1(&data->diu_reg->int_mask, 0xffffffff);
		FUNC0(info);
	}

	FUNC3(&diu_lock);
	return res;
}