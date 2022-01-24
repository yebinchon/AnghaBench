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
struct ufs_hisi_host {int dummy; } ;
struct ufs_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_GATE_BYPASS ; 
 int /*<<< orphan*/  MASK_UFS_CLK_GATE_BYPASS ; 
 int /*<<< orphan*/  MASK_UFS_SYSCRTL_BYPASS ; 
 int /*<<< orphan*/  UFS_SYSCTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hisi_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*,int /*<<< orphan*/ ,int) ; 
 struct ufs_hisi_host* FUNC3 (struct ufs_hba*) ; 

__attribute__((used)) static int FUNC4(struct ufs_hba *hba)
{
	struct ufs_hisi_host *host = FUNC3(hba);

	/* Unipro DL_AFC0CreditThreshold */
	FUNC2(hba, FUNC0(0x2044), 0x0);
	/* Unipro DL_TC0OutAckThreshold */
	FUNC2(hba, FUNC0(0x2045), 0x0);
	/* Unipro DL_TC0TXFCThreshold */
	FUNC2(hba, FUNC0(0x2040), 0x9);

	/* not bypass ufs clk gate */
	FUNC1(host, MASK_UFS_CLK_GATE_BYPASS,
						CLOCK_GATE_BYPASS);
	FUNC1(host, MASK_UFS_SYSCRTL_BYPASS,
						UFS_SYSCTRL);

	/* select received symbol cnt */
	FUNC2(hba, FUNC0(0xd09a), 0x80000000);
	 /* reset counter0 and enable */
	FUNC2(hba, FUNC0(0xd09c), 0x00000005);

	return 0;
}