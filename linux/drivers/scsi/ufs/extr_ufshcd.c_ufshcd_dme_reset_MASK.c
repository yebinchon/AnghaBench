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
struct uic_command {int /*<<< orphan*/  command; int /*<<< orphan*/  member_0; } ;
struct ufs_hba {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  UIC_CMD_DME_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct ufs_hba*,struct uic_command*) ; 

__attribute__((used)) static int FUNC2(struct ufs_hba *hba)
{
	struct uic_command uic_cmd = {0};
	int ret;

	uic_cmd.command = UIC_CMD_DME_RESET;

	ret = FUNC1(hba, &uic_cmd);
	if (ret)
		FUNC0(hba->dev,
			"dme-reset: error code %d\n", ret);

	return ret;
}