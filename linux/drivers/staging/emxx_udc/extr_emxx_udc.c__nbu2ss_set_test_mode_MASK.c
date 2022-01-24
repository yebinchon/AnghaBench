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
typedef  int u32 ;
struct nbu2ss_udc {TYPE_1__* p_regs; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  TEST_CONTROL; int /*<<< orphan*/  USB_CONTROL; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_TESTMODEEN ; 
 int MAX_TEST_MODE_NUM ; 
 int TEST_FORCE_ENABLE ; 
 int TEST_MODE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC4(struct nbu2ss_udc *udc, u32 mode)
{
	u32		data;

	if (mode > MAX_TEST_MODE_NUM)
		return;

	FUNC3(udc->dev, "SET FEATURE : test mode = %d\n", mode);

	data = FUNC1(&udc->p_regs->USB_CONTROL);
	data &= ~TEST_FORCE_ENABLE;
	data |= mode << TEST_MODE_SHIFT;

	FUNC2(&udc->p_regs->USB_CONTROL, data);
	FUNC0(&udc->p_regs->TEST_CONTROL, CS_TESTMODEEN);
}