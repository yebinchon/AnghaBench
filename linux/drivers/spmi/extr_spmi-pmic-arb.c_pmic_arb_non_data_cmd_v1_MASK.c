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
typedef  int u8 ;
typedef  int u32 ;
struct spmi_pmic_arb {int /*<<< orphan*/  lock; int /*<<< orphan*/  wr_base; TYPE_1__* ver_ops; } ;
struct spmi_controller {int dummy; } ;
struct TYPE_2__ {int (* offset ) (struct spmi_pmic_arb*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PMIC_ARB_CHANNEL_RW ; 
 scalar_t__ PMIC_ARB_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct spmi_pmic_arb*,scalar_t__,int) ; 
 int FUNC1 (struct spmi_controller*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct spmi_pmic_arb* FUNC4 (struct spmi_controller*) ; 
 int FUNC5 (struct spmi_pmic_arb*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct spmi_controller *ctrl, u8 opc, u8 sid)
{
	struct spmi_pmic_arb *pmic_arb = FUNC4(ctrl);
	unsigned long flags;
	u32 cmd;
	int rc;
	u32 offset;

	rc = pmic_arb->ver_ops->offset(pmic_arb, sid, 0, PMIC_ARB_CHANNEL_RW);
	if (rc < 0)
		return rc;

	offset = rc;
	cmd = ((opc | 0x40) << 27) | ((sid & 0xf) << 20);

	FUNC2(&pmic_arb->lock, flags);
	FUNC0(pmic_arb, offset + PMIC_ARB_CMD, cmd);
	rc = FUNC1(ctrl, pmic_arb->wr_base, sid, 0,
				    PMIC_ARB_CHANNEL_RW);
	FUNC3(&pmic_arb->lock, flags);

	return rc;
}