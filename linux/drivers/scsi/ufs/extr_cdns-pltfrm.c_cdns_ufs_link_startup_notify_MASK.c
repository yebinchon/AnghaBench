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
struct ufs_hba {int dummy; } ;
typedef  enum ufs_notify_change_status { ____Placeholder_ufs_notify_change_status } ufs_notify_change_status ;

/* Variables and functions */
 int /*<<< orphan*/  PA_LOCAL_TX_LCC_ENABLE ; 
 int PRE_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ufs_hba *hba,
					enum ufs_notify_change_status status)
{
	if (status != PRE_CHANGE)
		return 0;

	/*
	 * Some UFS devices have issues if LCC is enabled.
	 * So we are setting PA_Local_TX_LCC_Enable to 0
	 * before link startup which will make sure that both host
	 * and device TX LCC are disabled once link startup is
	 * completed.
	 */
	FUNC1(hba, FUNC0(PA_LOCAL_TX_LCC_ENABLE), 0);

	return 0;
}