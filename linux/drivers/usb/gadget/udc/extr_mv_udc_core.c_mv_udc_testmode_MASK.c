#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct mv_udc {TYPE_1__* dev; scalar_t__ test_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP_DIR_IN ; 
 scalar_t__ TEST_FORCE_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mv_udc*) ; 
 scalar_t__ FUNC2 (struct mv_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct mv_udc *udc, u16 index)
{
	if (index <= TEST_FORCE_EN) {
		udc->test_mode = index;
		if (FUNC2(udc, EP_DIR_IN, 0, true))
			FUNC1(udc);
	} else
		FUNC0(&udc->dev->dev,
			"This test mode(%d) is not supported\n", index);
}