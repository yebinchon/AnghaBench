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
struct ufs_qcom_host {int /*<<< orphan*/  device_reset; } ;
struct ufs_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct ufs_qcom_host* FUNC1 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct ufs_hba *hba)
{
	struct ufs_qcom_host *host = FUNC1(hba);

	/* reset gpio is optional */
	if (!host->device_reset)
		return;

	/*
	 * The UFS device shall detect reset pulses of 1us, sleep for 10us to
	 * be on the safe side.
	 */
	FUNC0(host->device_reset, 1);
	FUNC2(10, 15);

	FUNC0(host->device_reset, 0);
	FUNC2(10, 15);
}