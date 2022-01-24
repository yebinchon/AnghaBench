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
typedef  scalar_t__ u32 ;
struct bdc {int /*<<< orphan*/  dev; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDC_CMDPAR0 ; 
 int /*<<< orphan*/  BDC_CMDPAR1 ; 
 int /*<<< orphan*/  BDC_CMDPAR2 ; 
 int /*<<< orphan*/  BDC_CMDSC ; 
 scalar_t__ BDC_CMDS_BUSY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ BDC_CMD_CWS ; 
 scalar_t__ BDC_CMD_SRD ; 
 scalar_t__ BDC_CMD_TIMEOUT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct bdc *bdc, u32 cmd_sc, u32 param0,
							u32 param1, u32 param2)
{
	u32 timeout = BDC_CMD_TIMEOUT;
	u32 cmd_status;
	u32 temp;

	FUNC2(bdc->regs, BDC_CMDPAR0, param0);
	FUNC2(bdc->regs, BDC_CMDPAR1, param1);
	FUNC2(bdc->regs, BDC_CMDPAR2, param2);

	/* Issue the cmd */
	/* Make sure the cmd params are written before asking HW to exec cmd */
	FUNC7();
	FUNC2(bdc->regs, BDC_CMDSC, cmd_sc | BDC_CMD_CWS | BDC_CMD_SRD);
	do {
		temp = FUNC1(bdc->regs, BDC_CMDSC);
		FUNC4(bdc->dev, "cmdsc=%x", temp);
		cmd_status =  FUNC0(temp);
		if (cmd_status != BDC_CMDS_BUSY)  {
			FUNC3(bdc->dev,
				"command completed cmd_sts:%x\n", cmd_status);
			return cmd_status;
		}
		FUNC6(1);
	} while (timeout--);

	FUNC5(bdc->dev,
		"command operation timedout cmd_status=%d\n", cmd_status);

	return cmd_status;
}