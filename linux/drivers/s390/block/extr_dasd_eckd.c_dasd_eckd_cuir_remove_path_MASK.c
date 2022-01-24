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
struct dasd_cuir_message {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long FUNC0 (struct dasd_device*,int /*<<< orphan*/ ,struct dasd_cuir_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*,unsigned long) ; 
 unsigned long FUNC2 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct dasd_device *device, __u8 lpum,
				      struct dasd_cuir_message *cuir)
{
	unsigned long tbcpm;

	tbcpm = FUNC0(device, lpum, cuir);
	/* nothing to do if path is not in use */
	if (!(FUNC2(device) & tbcpm))
		return 0;
	if (!(FUNC2(device) & ~tbcpm)) {
		/* no path would be left if the CUIR action is taken
		   return error */
		return -EINVAL;
	}
	/* remove device from operational path mask */
	FUNC3(device, tbcpm);
	FUNC1(device, tbcpm);
	return tbcpm;
}