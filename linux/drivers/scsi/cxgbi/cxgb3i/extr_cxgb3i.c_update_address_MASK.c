#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cxgbi_hba {scalar_t__ ipv4addr; TYPE_1__* ndev; TYPE_1__* vdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC3(struct cxgbi_hba *chba)
{
	if (chba->ipv4addr) {
		if (chba->vdev &&
		    chba->ipv4addr != FUNC0(chba->vdev)) {
			FUNC1(chba->vdev, chba->ipv4addr);
			FUNC1(chba->ndev, 0);
			FUNC2("%s set %pI4.\n",
				chba->vdev->name, &chba->ipv4addr);
		} else if (chba->ipv4addr !=
				FUNC0(chba->ndev)) {
			FUNC1(chba->ndev, chba->ipv4addr);
			FUNC2("%s set %pI4.\n",
				chba->ndev->name, &chba->ipv4addr);
		}
	} else if (FUNC0(chba->ndev)) {
		if (chba->vdev)
			FUNC1(chba->vdev, 0);
		FUNC1(chba->ndev, 0);
	}
}