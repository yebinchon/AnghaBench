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
struct device {TYPE_1__* parent; } ;
struct sas_rphy {int /*<<< orphan*/  list; struct device dev; } ;
struct sas_host_attrs {int /*<<< orphan*/  lock; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct Scsi_Host* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct sas_host_attrs* FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

void FUNC7(struct sas_rphy *rphy)
{
	struct device *dev = &rphy->dev;
	struct Scsi_Host *shost = FUNC0(rphy->dev.parent->parent);
	struct sas_host_attrs *sas_host = FUNC5(shost);

	FUNC2(&sas_host->lock);
	FUNC1(&rphy->list);
	FUNC3(&sas_host->lock);

	FUNC6(dev);

	FUNC4(dev);
}