#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sas_rphy {int /*<<< orphan*/  scsi_target_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/  parent; } ;
struct sas_phy {int number; int enabled; TYPE_1__ dev; int /*<<< orphan*/  port_siblings; } ;
struct device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int,...) ; 
 struct sas_rphy* FUNC2 (struct device*) ; 
 struct Scsi_Host* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 struct sas_phy* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sas_phy_release ; 
 scalar_t__ FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

struct sas_phy *FUNC9(struct device *parent, int number)
{
	struct Scsi_Host *shost = FUNC3(parent);
	struct sas_phy *phy;

	phy = FUNC6(sizeof(*phy), GFP_KERNEL);
	if (!phy)
		return NULL;

	phy->number = number;
	phy->enabled = 1;

	FUNC4(&phy->dev);
	phy->dev.parent = FUNC5(parent);
	phy->dev.release = sas_phy_release;
	FUNC0(&phy->port_siblings);
	if (FUNC7(parent)) {
		struct sas_rphy *rphy = FUNC2(parent);
		FUNC1(&phy->dev, "phy-%d:%d:%d", shost->host_no,
			rphy->scsi_target_id, number);
	} else
		FUNC1(&phy->dev, "phy-%d:%d", shost->host_no, number);

	FUNC8(&phy->dev);

	return phy;
}