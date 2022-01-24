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
typedef  int /*<<< orphan*/  u32 ;
struct mmp_path {int /*<<< orphan*/  access_ok; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mmp_path*) ; 
 int /*<<< orphan*/  SCLK_DISABLE ; 
 scalar_t__ FUNC1 (struct mmp_path*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct mmp_path *path, int on)
{
	u32 tmp;
	FUNC2(&path->access_ok);
	tmp = FUNC4(FUNC1(path) + FUNC0(path));
	if (on)
		tmp &= ~SCLK_DISABLE;
	else
		tmp |= SCLK_DISABLE;
	FUNC5(tmp, FUNC1(path) + FUNC0(path));
	FUNC3(&path->access_ok);
}