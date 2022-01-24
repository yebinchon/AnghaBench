#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  release; int /*<<< orphan*/  parent; } ;
struct TYPE_5__ {int device_type; } ;
struct sas_rphy {TYPE_2__ dev; TYPE_1__ identify; scalar_t__ scsi_target_id; } ;
struct sas_port {int /*<<< orphan*/  dev; } ;
struct sas_host_attrs {int /*<<< orphan*/  lock; int /*<<< orphan*/  next_expander_id; } ;
struct sas_expander_device {struct sas_rphy rphy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_no; } ;
typedef  enum sas_device_type { ____Placeholder_sas_device_type } sas_device_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SAS_EDGE_EXPANDER_DEVICE ; 
 int SAS_FANOUT_EXPANDER_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct Scsi_Host* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sas_expander_device* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sas_expander_release ; 
 int /*<<< orphan*/  FUNC8 (struct sas_rphy*) ; 
 struct sas_host_attrs* FUNC9 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

struct sas_rphy *FUNC11(struct sas_port *parent,
				    enum sas_device_type type)
{
	struct Scsi_Host *shost = FUNC2(&parent->dev);
	struct sas_expander_device *rdev;
	struct sas_host_attrs *sas_host = FUNC9(shost);

	FUNC0(type != SAS_EDGE_EXPANDER_DEVICE &&
	       type != SAS_FANOUT_EXPANDER_DEVICE);

	rdev = FUNC5(sizeof(*rdev), GFP_KERNEL);
	if (!rdev) {
		return NULL;
	}

	FUNC3(&rdev->rphy.dev);
	rdev->rphy.dev.parent = FUNC4(&parent->dev);
	rdev->rphy.dev.release = sas_expander_release;
	FUNC6(&sas_host->lock);
	rdev->rphy.scsi_target_id = sas_host->next_expander_id++;
	FUNC7(&sas_host->lock);
	FUNC1(&rdev->rphy.dev, "expander-%d:%d",
		     shost->host_no, rdev->rphy.scsi_target_id);
	rdev->rphy.identify.device_type = type;
	FUNC8(&rdev->rphy);
	FUNC10(&rdev->rphy.dev);

	return &rdev->rphy;
}