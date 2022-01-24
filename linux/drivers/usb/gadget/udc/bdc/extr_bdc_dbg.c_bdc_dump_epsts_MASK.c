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
struct bdc {int /*<<< orphan*/  dev; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDC_EPSTS0 ; 
 int /*<<< orphan*/  BDC_EPSTS1 ; 
 int /*<<< orphan*/  BDC_EPSTS2 ; 
 int /*<<< orphan*/  BDC_EPSTS3 ; 
 int /*<<< orphan*/  BDC_EPSTS4 ; 
 int /*<<< orphan*/  BDC_EPSTS5 ; 
 int /*<<< orphan*/  BDC_EPSTS6 ; 
 int /*<<< orphan*/  BDC_EPSTS7 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC2(struct bdc *bdc)
{
	u32 temp;

	temp = FUNC0(bdc->regs, BDC_EPSTS0);
	FUNC1(bdc->dev, "BDC_EPSTS0:0x%08x\n", temp);

	temp = FUNC0(bdc->regs, BDC_EPSTS1);
	FUNC1(bdc->dev, "BDC_EPSTS1:0x%x\n", temp);

	temp = FUNC0(bdc->regs, BDC_EPSTS2);
	FUNC1(bdc->dev, "BDC_EPSTS2:0x%08x\n", temp);

	temp = FUNC0(bdc->regs, BDC_EPSTS3);
	FUNC1(bdc->dev, "BDC_EPSTS3:0x%08x\n", temp);

	temp = FUNC0(bdc->regs, BDC_EPSTS4);
	FUNC1(bdc->dev, "BDC_EPSTS4:0x%08x\n", temp);

	temp = FUNC0(bdc->regs, BDC_EPSTS5);
	FUNC1(bdc->dev, "BDC_EPSTS5:0x%08x\n", temp);

	temp = FUNC0(bdc->regs, BDC_EPSTS6);
	FUNC1(bdc->dev, "BDC_EPSTS6:0x%08x\n", temp);

	temp = FUNC0(bdc->regs, BDC_EPSTS7);
	FUNC1(bdc->dev, "BDC_EPSTS7:0x%08x\n", temp);
}