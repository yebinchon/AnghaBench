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
struct nci_dev {int dummy; } ;
struct fdp_nci_info {int setup_patch_sent; int /*<<< orphan*/  setup_wq; } ;

/* Variables and functions */
 struct fdp_nci_info* FUNC0 (struct nci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct nci_dev *ndev)
{
	struct fdp_nci_info *info = FUNC0(ndev);

	info->setup_patch_sent = 1;
	FUNC1(&info->setup_wq);
}