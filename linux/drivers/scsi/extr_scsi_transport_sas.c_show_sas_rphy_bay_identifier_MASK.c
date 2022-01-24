#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct sas_rphy {TYPE_1__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct sas_phy {TYPE_2__ dev; } ;
struct sas_internal {TYPE_3__* f; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
typedef  int ssize_t ;
struct TYPE_6__ {int (* get_bay_identifier ) (struct sas_rphy*) ;} ;

/* Variables and functions */
 struct sas_phy* FUNC0 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*,int) ; 
 int FUNC3 (struct sas_rphy*) ; 
 struct sas_internal* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sas_rphy* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC6(struct device *dev,
			     struct device_attribute *attr, char *buf)
{
	struct sas_rphy *rphy = FUNC5(dev);
	struct sas_phy *phy = FUNC0(rphy->dev.parent);
	struct Scsi_Host *shost = FUNC1(phy->dev.parent);
	struct sas_internal *i = FUNC4(shost->transportt);
	int val;

	val = i->f->get_bay_identifier(rphy);
	if (val < 0)
		return val;
	return FUNC2(buf, "%d\n", val);
}