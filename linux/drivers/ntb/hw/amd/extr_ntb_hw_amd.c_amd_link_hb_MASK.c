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
struct work_struct {int dummy; } ;
struct amd_ntb_dev {int /*<<< orphan*/  hb_timer; int /*<<< orphan*/  ntb; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_LINK_HB_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct amd_ntb_dev*) ; 
 scalar_t__ FUNC1 (struct amd_ntb_dev*) ; 
 struct amd_ntb_dev* FUNC2 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct work_struct *work)
{
	struct amd_ntb_dev *ndev = FUNC2(work);

	if (FUNC1(ndev))
		FUNC3(&ndev->ntb);

	if (!FUNC0(ndev))
		FUNC4(&ndev->hb_timer, AMD_LINK_HB_TIMEOUT);
}