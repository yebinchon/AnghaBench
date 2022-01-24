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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * fan_handle ; 
 int /*<<< orphan*/ * hsf_handle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct platform_device *pd)
{
	if (fan_handle) {
		FUNC0(&pd->dev, fan_handle);
		FUNC1(fan_handle);
		fan_handle = NULL;
	}
	if (hsf_handle) {
		FUNC0(&pd->dev, hsf_handle);
		FUNC1(hsf_handle);
		hsf_handle = NULL;
	}
}