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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  bMaskDWord ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int,int /*<<< orphan*/ ,int) ; 
 int rFPGA0_IQK ; 

__attribute__((used)) static void FUNC1(struct adapter *adapt)
{
	FUNC0(adapt, rFPGA0_IQK, bMaskDWord, 0x0);
	FUNC0(adapt, 0x840, bMaskDWord, 0x00010000);
	FUNC0(adapt, rFPGA0_IQK, bMaskDWord, 0x80800000);
}