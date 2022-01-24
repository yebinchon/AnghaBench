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
typedef  int u8 ;
struct device {int dummy; } ;
struct ci_hdrc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_ULPI_VIEWPORT ; 
 int FUNC0 (int) ; 
 int ULPI_RUN ; 
 int ULPI_WAKEUP ; 
 int ULPI_WRITE ; 
 int FUNC1 (struct ci_hdrc*,int) ; 
 struct ci_hdrc* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ci_hdrc*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, u8 addr, u8 val)
{
	struct ci_hdrc *ci = FUNC2(dev);
	int ret;

	FUNC3(ci, OP_ULPI_VIEWPORT, 0xffffffff, ULPI_WRITE | ULPI_WAKEUP);
	ret = FUNC1(ci, ULPI_WAKEUP);
	if (ret)
		return ret;

	FUNC3(ci, OP_ULPI_VIEWPORT, 0xffffffff,
		 ULPI_RUN | ULPI_WRITE | FUNC0(addr) | val);
	return FUNC1(ci, ULPI_RUN);
}