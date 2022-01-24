#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pm8001_work {int handler; int /*<<< orphan*/  work; void* data; struct pm8001_hba_info* pm8001_ha; } ;
struct pm8001_hba_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pm8001_work* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pm8001_work_fn ; 
 int /*<<< orphan*/  pm8001_wq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct pm8001_hba_info *pm8001_ha, void *data,
			       int handler)
{
	struct pm8001_work *pw;
	int ret = 0;

	pw = FUNC1(sizeof(struct pm8001_work), GFP_ATOMIC);
	if (pw) {
		pw->pm8001_ha = pm8001_ha;
		pw->data = data;
		pw->handler = handler;
		FUNC0(&pw->work, pm8001_work_fn);
		FUNC2(pm8001_wq, &pw->work);
	} else
		ret = -ENOMEM;

	return ret;
}