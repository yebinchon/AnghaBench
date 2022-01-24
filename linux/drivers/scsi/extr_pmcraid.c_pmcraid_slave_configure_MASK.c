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
typedef  int /*<<< orphan*/  u8 ;
struct scsi_device {scalar_t__ type; int allow_restart; scalar_t__ tagged_supported; int /*<<< orphan*/  request_queue; scalar_t__ lun; int /*<<< orphan*/  id; int /*<<< orphan*/  channel; TYPE_1__* host; struct pmcraid_resource_entry* hostdata; } ;
struct pmcraid_resource_entry {int /*<<< orphan*/  cfg_entry; } ;
struct TYPE_2__ {int /*<<< orphan*/  unique_id; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  PMCRAID_VSET_IO_TIMEOUT ; 
 int /*<<< orphan*/  PMCRAID_VSET_MAX_SECTORS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_ENCLOSURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct scsi_device *scsi_dev)
{
	struct pmcraid_resource_entry *res = scsi_dev->hostdata;

	if (!res)
		return 0;

	/* LLD exposes VSETs and Enclosure devices only */
	if (FUNC0(res->cfg_entry) &&
	    scsi_dev->type != TYPE_ENCLOSURE)
		return -ENXIO;

	FUNC4("configuring %x:%x:%x:%x\n",
		     scsi_dev->host->unique_id,
		     scsi_dev->channel,
		     scsi_dev->id,
		     (u8)scsi_dev->lun);

	if (FUNC0(res->cfg_entry)) {
		scsi_dev->allow_restart = 1;
	} else if (FUNC1(res->cfg_entry)) {
		scsi_dev->allow_restart = 1;
		FUNC3(scsi_dev->request_queue,
				     PMCRAID_VSET_IO_TIMEOUT);
		FUNC2(scsi_dev->request_queue,
				      PMCRAID_VSET_MAX_SECTORS);
	}

	/*
	 * We never want to report TCQ support for these types of devices.
	 */
	if (!FUNC0(res->cfg_entry) && !FUNC1(res->cfg_entry))
		scsi_dev->tagged_supported = 0;

	return 0;
}