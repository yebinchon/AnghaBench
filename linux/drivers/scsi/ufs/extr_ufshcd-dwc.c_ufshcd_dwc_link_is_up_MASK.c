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

/* Variables and functions */
 int UFSHCD_LINK_IS_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VS_POWERSTATE ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hba*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*) ; 

__attribute__((used)) static int FUNC3(struct ufs_hba *hba)
{
	int dme_result = 0;

	FUNC1(hba, FUNC0(VS_POWERSTATE), &dme_result);

	if (dme_result == UFSHCD_LINK_IS_UP) {
		FUNC2(hba);
		return 0;
	}

	return 1;
}