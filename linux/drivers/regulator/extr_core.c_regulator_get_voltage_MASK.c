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
struct ww_acquire_ctx {int dummy; } ;
struct regulator {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ww_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ww_acquire_ctx*) ; 

int FUNC3(struct regulator *regulator)
{
	struct ww_acquire_ctx ww_ctx;
	int ret;

	FUNC1(regulator->rdev, &ww_ctx);
	ret = FUNC0(regulator->rdev);
	FUNC2(regulator->rdev, &ww_ctx);

	return ret;
}