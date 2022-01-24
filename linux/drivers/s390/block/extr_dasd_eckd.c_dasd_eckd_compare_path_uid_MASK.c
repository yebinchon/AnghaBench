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
struct dasd_uid {int dummy; } ;
struct dasd_eckd_private {int /*<<< orphan*/  uid; } ;
struct dasd_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dasd_eckd_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*,struct dasd_uid*) ; 
 int FUNC2 (struct dasd_uid*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct dasd_device *device,
				      struct dasd_eckd_private *private)
{
	struct dasd_uid device_uid;

	FUNC0(private);
	FUNC1(device, &device_uid);

	return FUNC2(&device_uid, &private->uid, sizeof(struct dasd_uid));
}