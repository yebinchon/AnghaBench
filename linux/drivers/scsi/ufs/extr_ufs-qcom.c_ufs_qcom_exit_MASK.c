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
struct ufs_qcom_host {int /*<<< orphan*/  generic_phy; } ;
struct ufs_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_qcom_host*) ; 
 struct ufs_qcom_host* FUNC3 (struct ufs_hba*) ; 

__attribute__((used)) static void FUNC4(struct ufs_hba *hba)
{
	struct ufs_qcom_host *host = FUNC3(hba);

	FUNC2(host);
	FUNC1(host->generic_phy);
	FUNC0(host->generic_phy);
}