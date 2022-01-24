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
 int /*<<< orphan*/  BDC_BDCCAP0 ; 
 int /*<<< orphan*/  BDC_BDCCAP1 ; 
 int /*<<< orphan*/  BDC_BDCCFG0 ; 
 int /*<<< orphan*/  BDC_BDCCFG1 ; 
 int /*<<< orphan*/  BDC_DVCSA ; 
 int /*<<< orphan*/  BDC_DVCSB ; 
 int /*<<< orphan*/  BDC_USPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC2(struct bdc *bdc)
{
	u32 temp;

	FUNC1(bdc->dev, "bdc->regs:%p\n", bdc->regs);
	temp = FUNC0(bdc->regs, BDC_BDCCFG0);
	FUNC1(bdc->dev, "bdccfg0:0x%08x\n", temp);
	temp = FUNC0(bdc->regs, BDC_BDCCFG1);
	FUNC1(bdc->dev, "bdccfg1:0x%08x\n", temp);
	temp = FUNC0(bdc->regs, BDC_BDCCAP0);
	FUNC1(bdc->dev, "bdccap0:0x%08x\n", temp);
	temp = FUNC0(bdc->regs, BDC_BDCCAP1);
	FUNC1(bdc->dev, "bdccap1:0x%08x\n", temp);
	temp = FUNC0(bdc->regs, BDC_USPC);
	FUNC1(bdc->dev, "uspc:0x%08x\n", temp);
	temp = FUNC0(bdc->regs, BDC_DVCSA);
	FUNC1(bdc->dev, "dvcsa:0x%08x\n", temp);
	temp = FUNC0(bdc->regs, BDC_DVCSB);
	FUNC1(bdc->dev, "dvcsb:0x%x08\n", temp);
}