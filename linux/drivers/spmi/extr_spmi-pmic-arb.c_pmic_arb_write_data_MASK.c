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
struct spmi_pmic_arb {scalar_t__ wr_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int const*,int) ; 

__attribute__((used)) static void FUNC2(struct spmi_pmic_arb *pmic_arb, const u8 *buf,
				u32 reg, u8 bc)
{
	u32 data = 0;

	FUNC1(&data, buf, (bc & 3) + 1);
	FUNC0(data, pmic_arb->wr_base + reg);
}