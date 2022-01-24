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
typedef  int u32 ;
struct ufs_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VS_SAVEPOWERCONTROL ; 
 int FUNC1 (struct ufs_hba*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct ufs_hba*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct ufs_hba *hba)
{
	int ret;
	u32 tmp;

	/* disable deep stall */
	ret = FUNC1(hba, FUNC0(VS_SAVEPOWERCONTROL), &tmp);
	if (ret)
		return ret;

	tmp &= ~(1 << 6);

	ret = FUNC2(hba, FUNC0(VS_SAVEPOWERCONTROL), tmp);

	return ret;
}