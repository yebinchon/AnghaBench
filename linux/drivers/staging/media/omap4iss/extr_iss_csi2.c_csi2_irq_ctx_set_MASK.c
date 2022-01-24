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
typedef  int u32 ;
struct iss_csi2_device {int /*<<< orphan*/  regs1; int /*<<< orphan*/  iss; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int CSI2_CTX_IRQ_FE ; 
 int CSI2_CTX_IRQ_FS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static void FUNC5(struct iss_csi2_device *csi2, int enable)
{
	const u32 mask = CSI2_CTX_IRQ_FE | CSI2_CTX_IRQ_FS;
	int i;

	for (i = 0; i < 8; i++) {
		FUNC4(csi2->iss, csi2->regs1, FUNC1(i),
			      mask);
		if (enable)
			FUNC3(csi2->iss, csi2->regs1,
				    FUNC0(i), mask);
		else
			FUNC2(csi2->iss, csi2->regs1,
				    FUNC0(i), mask);
	}
}