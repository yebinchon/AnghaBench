#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct ctlr_info {TYPE_1__* pdev; } ;
struct ReportExtendedLUNdata {TYPE_2__* LUN; int /*<<< orphan*/  LUNListLength; } ;
struct TYPE_4__ {int /*<<< orphan*/ * wwid; int /*<<< orphan*/ * lunid; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct ctlr_info*,struct ReportExtendedLUNdata*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ReportExtendedLUNdata*) ; 
 struct ReportExtendedLUNdata* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,int) ; 

__attribute__((used)) static u64 FUNC7(struct ctlr_info *h,
						unsigned char *scsi3addr)
{
	struct ReportExtendedLUNdata *physdev;
	u32 nphysicals;
	u64 sa = 0;
	int i;

	physdev = FUNC5(sizeof(*physdev), GFP_KERNEL);
	if (!physdev)
		return 0;

	if (FUNC3(h, physdev, sizeof(*physdev))) {
		FUNC0(&h->pdev->dev, "report physical LUNs failed.\n");
		FUNC4(physdev);
		return 0;
	}
	nphysicals = FUNC1(physdev->LUNListLength) / 24;

	for (i = 0; i < nphysicals; i++)
		if (!FUNC6(&physdev->LUN[i].lunid[0], scsi3addr, 8)) {
			sa = FUNC2(&physdev->LUN[i].wwid[0]);
			break;
		}

	FUNC4(physdev);

	return sa;
}