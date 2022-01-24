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
struct ufs_qcom_host {int dummy; } ;
struct ufs_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ufs_qcom_host*) ; 
 int FUNC1 (struct ufs_hba*,int) ; 
 struct ufs_qcom_host* FUNC2 (struct ufs_hba*) ; 

__attribute__((used)) static int FUNC3(struct ufs_hba *hba)
{
	struct ufs_qcom_host *host = FUNC2(hba);

	if (!FUNC0(host))
		return 0;

	/* set unipro core clock cycles to 75 and clear clock divider */
	return FUNC1(hba, 75);
}