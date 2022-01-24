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
struct beiscsi_hba {int dummy; } ;
struct be_cmd_get_if_info_resp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_IP_TYPE_V4 ; 
 int /*<<< orphan*/  BEISCSI_IP_TYPE_V6 ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ,struct be_cmd_get_if_info_resp**) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_cmd_get_if_info_resp*) ; 

void FUNC4(struct beiscsi_hba *phba)
{
	struct be_cmd_get_if_info_resp *if_info;

	if (!FUNC0(phba, BEISCSI_IP_TYPE_V4, &if_info)) {
		FUNC1(phba);
		FUNC3(if_info);
	}

	if (!FUNC0(phba, BEISCSI_IP_TYPE_V6, &if_info)) {
		FUNC2(phba);
		FUNC3(if_info);
	}
}