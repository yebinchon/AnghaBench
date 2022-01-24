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
struct path_verification_work_data {int isglobal; int /*<<< orphan*/  worker; int /*<<< orphan*/  tbvpm; struct dasd_device* device; } ;
struct dasd_device {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 int /*<<< orphan*/  dasd_path_verification_mutex ; 
 int /*<<< orphan*/  do_path_verification_work ; 
 struct path_verification_work_data* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct path_verification_work_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct path_verification_work_data* path_verification_worker ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct dasd_device *device, __u8 lpm)
{
	struct path_verification_work_data *data;

	data = FUNC2(sizeof(*data), GFP_ATOMIC | GFP_DMA);
	if (!data) {
		if (FUNC4(&dasd_path_verification_mutex)) {
			data = path_verification_worker;
			data->isglobal = 1;
		} else
			return -ENOMEM;
	} else {
		FUNC3(data, 0, sizeof(*data));
		data->isglobal = 0;
	}
	FUNC0(&data->worker, do_path_verification_work);
	FUNC1(device);
	data->device = device;
	data->tbvpm = lpm;
	FUNC5(&data->worker);
	return 0;
}