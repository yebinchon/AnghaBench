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
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct sas_phy {TYPE_1__ dev; } ;
struct sas_internal {TYPE_2__* f; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* phy_release ) (struct sas_phy*) ;} ;

/* Variables and functions */
 struct sas_phy* FUNC0 (struct device*) ; 
 struct Scsi_Host* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sas_phy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sas_phy*) ; 
 struct sas_internal* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct device *dev)
{
	struct sas_phy *phy = FUNC0(dev);
	struct Scsi_Host *shost = FUNC1(phy->dev.parent);
	struct sas_internal *i = FUNC5(shost->transportt);

	if (i->f->phy_release)
		i->f->phy_release(phy);
	FUNC3(dev->parent);
	FUNC2(phy);
}