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
typedef  int u64 ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usbfs_memory_mb ; 
 int /*<<< orphan*/  usbfs_memory_usage ; 

__attribute__((used)) static int FUNC4(u64 amount)
{
	u64 lim;

	lim = FUNC0(usbfs_memory_mb);
	lim <<= 20;

	FUNC1(amount, &usbfs_memory_usage);

	if (lim > 0 && FUNC2(&usbfs_memory_usage) > lim) {
		FUNC3(amount, &usbfs_memory_usage);
		return -ENOMEM;
	}

	return 0;
}