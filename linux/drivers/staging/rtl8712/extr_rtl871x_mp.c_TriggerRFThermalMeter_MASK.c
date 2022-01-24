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
struct _adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RF_PATH_A ; 
 int /*<<< orphan*/  RF_T_METER ; 
 int /*<<< orphan*/  bRFRegOffsetMask ; 
 int /*<<< orphan*/  FUNC0 (struct _adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct _adapter *pAdapter)
{
	/* 0x24: RF Reg[6:5] */
	FUNC0(pAdapter, RF_PATH_A, RF_T_METER, bRFRegOffsetMask, 0x60);
}