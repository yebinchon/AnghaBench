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
struct topstar_laptop {int /*<<< orphan*/  platform; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  TOPSTAR_LAPTOP_CLASS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct topstar_laptop*) ; 

__attribute__((used)) static int FUNC4(struct topstar_laptop *topstar)
{
	int err;

	topstar->platform = FUNC1(TOPSTAR_LAPTOP_CLASS, -1);
	if (!topstar->platform)
		return -ENOMEM;

	FUNC3(topstar->platform, topstar);

	err = FUNC0(topstar->platform);
	if (err)
		goto err_device_put;

	return 0;

err_device_put:
	FUNC2(topstar->platform);
	return err;
}