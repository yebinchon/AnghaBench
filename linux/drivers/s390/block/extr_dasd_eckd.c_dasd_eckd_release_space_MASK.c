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
struct format_data_t {int intensity; int /*<<< orphan*/  stop_unit; int /*<<< orphan*/  start_unit; } ;
struct dasd_device {int dummy; } ;

/* Variables and functions */
 int DASD_FMT_INT_ESE_FULL ; 
 int EINVAL ; 
 int FUNC0 (struct dasd_device*) ; 
 int FUNC1 (struct dasd_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dasd_device *device,
				   struct format_data_t *rdata)
{
	if (rdata->intensity & DASD_FMT_INT_ESE_FULL)
		return FUNC0(device);
	else if (rdata->intensity == 0)
		return FUNC1(device, rdata->start_unit,
						    rdata->stop_unit);
	else
		return -EINVAL;
}