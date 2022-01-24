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

/* Variables and functions */
 int /*<<< orphan*/  QUNIPRO_SEL ; 
 int /*<<< orphan*/  REG_UFS_CFG1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct ufs_qcom_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ufs_qcom_host *host)
{
	FUNC2(host->hba, QUNIPRO_SEL,
		   FUNC1(host) ? QUNIPRO_SEL : 0,
		   REG_UFS_CFG1);
	/* make sure above configuration is applied before we return */
	FUNC0();
}