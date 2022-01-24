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
typedef  scalar_t__ u32 ;
struct spmi_pmic_arb {scalar_t__ rd_base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int*,scalar_t__*,int) ; 

__attribute__((used)) static void
FUNC2(struct spmi_pmic_arb *pmic_arb, u8 *buf, u32 reg, u8 bc)
{
	u32 data = FUNC0(pmic_arb->rd_base + reg);

	FUNC1(buf, &data, (bc & 3) + 1);
}