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
struct ufs_qcom_host {int /*<<< orphan*/  hba; } ;
struct reset_controller_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 struct ufs_qcom_host* FUNC1 (struct reset_controller_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int
FUNC4(struct reset_controller_dev *rcdev, unsigned long id)
{
	struct ufs_qcom_host *host = FUNC1(rcdev);

	/* Currently this code only knows about a single reset. */
	FUNC0(id);
	FUNC2(host->hba);
	/* provide 1ms delay to let the reset pulse propagate. */
	FUNC3(1000, 1100);
	return 0;
}