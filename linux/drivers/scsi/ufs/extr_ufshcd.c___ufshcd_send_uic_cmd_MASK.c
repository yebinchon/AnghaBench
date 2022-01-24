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
struct uic_command {int /*<<< orphan*/  done; } ;
struct ufs_hba {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*,struct uic_command*) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*) ; 

__attribute__((used)) static int
FUNC4(struct ufs_hba *hba, struct uic_command *uic_cmd,
		      bool completion)
{
	if (!FUNC3(hba)) {
		FUNC0(hba->dev,
			"Controller not ready to accept UIC commands\n");
		return -EIO;
	}

	if (completion)
		FUNC1(&uic_cmd->done);

	FUNC2(hba, uic_cmd);

	return 0;
}