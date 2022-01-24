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
typedef  int /*<<< orphan*/  u8 ;
struct device {int dummy; } ;
struct ci_hdrc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  OP_ULPI_VIEWPORT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ULPI_RUN ; 
 int ULPI_WAKEUP ; 
 int ULPI_WRITE ; 
 int FUNC2 (struct ci_hdrc*,int) ; 
 struct ci_hdrc* FUNC3 (struct device*) ; 
 int FUNC4 (struct ci_hdrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ci_hdrc*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC6(struct device *dev, u8 addr)
{
	struct ci_hdrc *ci = FUNC3(dev);
	int ret;

	FUNC5(ci, OP_ULPI_VIEWPORT, 0xffffffff, ULPI_WRITE | ULPI_WAKEUP);
	ret = FUNC2(ci, ULPI_WAKEUP);
	if (ret)
		return ret;

	FUNC5(ci, OP_ULPI_VIEWPORT, 0xffffffff, ULPI_RUN | FUNC1(addr));
	ret = FUNC2(ci, ULPI_RUN);
	if (ret)
		return ret;

	return FUNC4(ci, OP_ULPI_VIEWPORT, FUNC0(15, 8)) >> 8;
}