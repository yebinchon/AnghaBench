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
struct pqi_ctrl_info {int pqi_mode_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  PQI_PENDING_IO_TIMEOUT_SECS ; 
 int /*<<< orphan*/  SIS_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct pqi_ctrl_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct pqi_ctrl_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct pqi_ctrl_info*) ; 

__attribute__((used)) static void FUNC12(struct pqi_ctrl_info *ctrl_info)
{
	FUNC1(ctrl_info);
	FUNC0(ctrl_info);
	FUNC10(ctrl_info);
	FUNC11(ctrl_info);
	FUNC3(ctrl_info);
	FUNC2(ctrl_info);
	FUNC5(ctrl_info);
	FUNC4(ctrl_info, PQI_PENDING_IO_TIMEOUT_SECS);
	FUNC6(ctrl_info);
	FUNC9(ctrl_info);
	FUNC8(ctrl_info);
	ctrl_info->pqi_mode_enabled = false;
	FUNC7(ctrl_info, SIS_MODE);
}