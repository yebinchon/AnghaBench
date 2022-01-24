#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snic {TYPE_1__* msix; int /*<<< orphan*/  pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  devid; scalar_t__ requested; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void
FUNC3(struct snic *snic)
{
	int i;

	/* ONLY interrupt mode MSIX is supported */
	for (i = 0; i < FUNC0(snic->msix); i++) {
		if (snic->msix[i].requested) {
			FUNC1(FUNC2(snic->pdev, i),
				 snic->msix[i].devid);
		}
	}
}