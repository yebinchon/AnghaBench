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
struct cxgbi_hba {int /*<<< orphan*/  shost; } ;
struct cxgbi_device {int nports; int /*<<< orphan*/  pdev; struct cxgbi_hba** hbas; } ;

/* Variables and functions */
 int CXGBI_DBG_DEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,struct cxgbi_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct cxgbi_device *cdev)
{
	int i;
	struct cxgbi_hba *chba;

	FUNC2(1 << CXGBI_DBG_DEV,
		"cdev 0x%p, p#%u.\n", cdev, cdev->nports);

	for (i = 0; i < cdev->nports; i++) {
		chba = cdev->hbas[i];
		if (chba) {
			cdev->hbas[i] = NULL;
			FUNC1(chba->shost);
			FUNC3(cdev->pdev);
			FUNC0(chba->shost);
		}
	}
}