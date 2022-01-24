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
typedef  scalar_t__ u32 ;
struct ufs_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PA_LOCAL_TX_LCC_ENABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hba*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ufs_hba *hba)
{
	u32 attr = FUNC0(PA_LOCAL_TX_LCC_ENABLE);
	u32 lcc_enable = 0;

	FUNC1(hba, attr, &lcc_enable);
	if (lcc_enable)
		FUNC2(hba, attr, 0);

	return 0;
}