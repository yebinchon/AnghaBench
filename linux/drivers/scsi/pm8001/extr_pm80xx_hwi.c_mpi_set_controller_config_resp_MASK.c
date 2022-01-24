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
struct set_ctrl_cfg_resp {int /*<<< orphan*/  err_qlfr_pgcd; int /*<<< orphan*/  status; } ;
struct pm8001_hba_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pm8001_hba_info *pm8001_ha,
			void *piomb)
{
	struct set_ctrl_cfg_resp *pPayload =
			(struct set_ctrl_cfg_resp *)(piomb + 4);
	u32 status = FUNC1(pPayload->status);
	u32 err_qlfr_pgcd = FUNC1(pPayload->err_qlfr_pgcd);

	FUNC0(pm8001_ha, FUNC2(
			"SET CONTROLLER RESP: status 0x%x qlfr_pgcd 0x%x\n",
			status, err_qlfr_pgcd));

	return 0;
}