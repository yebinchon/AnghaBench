#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ext_pool_exhaust_work_data {int /*<<< orphan*/  worker; int /*<<< orphan*/ * base; struct dasd_device* device; } ;
struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int /*<<< orphan*/ * basedev; TYPE_1__* block; } ;
struct TYPE_2__ {int /*<<< orphan*/ * base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dasd_eckd_ext_pool_exhaust_work ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 struct ext_pool_exhaust_work_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct dasd_device *device,
				      struct dasd_ccw_req *cqr)
{
	struct ext_pool_exhaust_work_data *data;

	data = FUNC2(sizeof(*data), GFP_ATOMIC);
	if (!data)
		return -ENOMEM;
	FUNC0(&data->worker, dasd_eckd_ext_pool_exhaust_work);
	FUNC1(device);
	data->device = device;

	if (cqr->block)
		data->base = cqr->block->base;
	else if (cqr->basedev)
		data->base = cqr->basedev;
	else
		data->base = NULL;

	FUNC3(&data->worker);

	return 0;
}