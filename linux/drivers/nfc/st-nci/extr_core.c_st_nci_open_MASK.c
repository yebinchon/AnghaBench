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
struct st_nci_info {int /*<<< orphan*/  flags; int /*<<< orphan*/  ndlc; } ;
struct nci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST_NCI_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct st_nci_info* FUNC1 (struct nci_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct nci_dev *ndev)
{
	struct st_nci_info *info = FUNC1(ndev);
	int r;

	if (FUNC3(ST_NCI_RUNNING, &info->flags))
		return 0;

	r = FUNC2(info->ndlc);
	if (r)
		FUNC0(ST_NCI_RUNNING, &info->flags);

	return r;
}