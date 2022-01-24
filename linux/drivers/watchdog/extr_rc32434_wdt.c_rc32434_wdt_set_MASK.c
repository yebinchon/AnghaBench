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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  io_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  wtcompare; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 TYPE_2__ rc32434_wdt_device ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int timeout ; 
 TYPE_1__* wdt_reg ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(int new_timeout)
{
	int max_to = FUNC1((u32)-1);

	if (new_timeout < 0 || new_timeout > max_to) {
		FUNC2("timeout value must be between 0 and %d\n", max_to);
		return -EINVAL;
	}
	timeout = new_timeout;
	FUNC3(&rc32434_wdt_device.io_lock);
	FUNC5(FUNC0(timeout), &wdt_reg->wtcompare);
	FUNC4(&rc32434_wdt_device.io_lock);

	return 0;
}