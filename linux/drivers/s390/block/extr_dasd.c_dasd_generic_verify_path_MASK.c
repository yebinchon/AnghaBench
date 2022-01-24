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
struct dasd_device {int dummy; } ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*,scalar_t__) ; 

int FUNC4(struct dasd_device *device, __u8 lpm)
{
	if (!FUNC2(device) && lpm) {
		FUNC3(device, lpm);
		FUNC0(device);
	} else
		FUNC1(device, lpm);
	return 0;
}