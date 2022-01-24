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
struct pci_device_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  counter; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  devfn; TYPE_2__* bus; TYPE_1__ enable_cnt; int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
struct esas2r_request {int dummy; } ;
struct esas2r_adapter {int sysfs_fw_created; int sysfs_fs_created; int sysfs_vda_created; int sysfs_hw_created; int sysfs_live_nvram_created; int sysfs_default_nvram_created; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct Scsi_Host {int max_lun; int max_cmd_len; int /*<<< orphan*/  shost_gendev; TYPE_3__ shost_dev; scalar_t__ hostdata; int /*<<< orphan*/  max_sectors; int /*<<< orphan*/  sg_tablesize; int /*<<< orphan*/  unique_id; scalar_t__ max_channel; scalar_t__ max_id; scalar_t__ this_id; int /*<<< orphan*/  cmd_per_lun; int /*<<< orphan*/  can_queue; } ;
typedef  int num_requests ;
struct TYPE_5__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ESAS2R_LOG_CRIT ; 
 int /*<<< orphan*/  ESAS2R_LOG_DEBG ; 
 int /*<<< orphan*/  ESAS2R_LOG_INFO ; 
 int /*<<< orphan*/  ESAS2R_LOG_WARN ; 
 scalar_t__ ESAS2R_MAX_ID ; 
 int /*<<< orphan*/  bin_attr_default_nvram ; 
 int /*<<< orphan*/  bin_attr_fs ; 
 int /*<<< orphan*/  bin_attr_fw ; 
 int /*<<< orphan*/  bin_attr_hw ; 
 int /*<<< orphan*/  bin_attr_live_nvram ; 
 int /*<<< orphan*/  bin_attr_vda ; 
 int /*<<< orphan*/  can_queue ; 
 int /*<<< orphan*/  cmd_per_lun ; 
 int /*<<< orphan*/  driver_template ; 
 int /*<<< orphan*/  FUNC0 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*,struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  esas2r_max_sectors ; 
 int /*<<< orphan*/  found_adapters ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 int FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC11 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  sg_tablesize ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct pci_dev *pcid,
			const struct pci_device_id *id)
{
	struct Scsi_Host *host = NULL;
	struct esas2r_adapter *a;
	int err;

	size_t host_alloc_size = sizeof(struct esas2r_adapter)
				 + ((num_requests) +
				    1) * sizeof(struct esas2r_request);

	FUNC3(ESAS2R_LOG_DEBG, &(pcid->dev),
		       "esas2r_probe() 0x%02x 0x%02x 0x%02x 0x%02x",
		       pcid->vendor,
		       pcid->device,
		       pcid->subsystem_vendor,
		       pcid->subsystem_device);

	FUNC3(ESAS2R_LOG_INFO, &(pcid->dev),
		       "before pci_enable_device() "
		       "enable_cnt: %d",
		       pcid->enable_cnt.counter);

	err = FUNC5(pcid);
	if (err != 0) {
		FUNC3(ESAS2R_LOG_CRIT, &(pcid->dev),
			       "pci_enable_device() FAIL (%d)",
			       err);
		return -ENODEV;
	}

	FUNC3(ESAS2R_LOG_INFO, &(pcid->dev),
		       "pci_enable_device() OK");
	FUNC3(ESAS2R_LOG_INFO, &(pcid->dev),
		       "after pci_enable_device() enable_cnt: %d",
		       pcid->enable_cnt.counter);

	host = FUNC9(&driver_template, host_alloc_size);
	if (host == NULL) {
		FUNC2(ESAS2R_LOG_CRIT, "scsi_host_alloc() FAIL");
		return -ENODEV;
	}

	FUNC4(host->hostdata, 0, host_alloc_size);

	a = (struct esas2r_adapter *)host->hostdata;

	FUNC2(ESAS2R_LOG_INFO, "scsi_host_alloc() OK host: %p", host);

	/* override max LUN and max target id */

	host->max_id = ESAS2R_MAX_ID + 1;
	host->max_lun = 255;

	/* we can handle 16-byte CDbs */

	host->max_cmd_len = 16;

	host->can_queue = can_queue;
	host->cmd_per_lun = cmd_per_lun;
	host->this_id = host->max_id + 1;
	host->max_channel = 0;
	host->unique_id = found_adapters;
	host->sg_tablesize = sg_tablesize;
	host->max_sectors = esas2r_max_sectors;

	/* set to bus master for BIOses that don't do it for us */

	FUNC2(ESAS2R_LOG_INFO, "pci_set_master() called");

	FUNC7(pcid);

	if (!FUNC1(host, pcid, found_adapters)) {
		FUNC2(ESAS2R_LOG_CRIT,
			   "unable to initialize device at PCI bus %x:%x",
			   pcid->bus->number,
			   pcid->devfn);

		FUNC3(ESAS2R_LOG_INFO, &(host->shost_gendev),
			       "scsi_host_put() called");

		FUNC10(host);

		return 0;

	}

	FUNC2(ESAS2R_LOG_INFO, "pci_set_drvdata(%p, %p) called", pcid,
		   host->hostdata);

	FUNC6(pcid, host);

	FUNC2(ESAS2R_LOG_INFO, "scsi_add_host() called");

	err = FUNC8(host, &pcid->dev);

	if (err) {
		FUNC2(ESAS2R_LOG_CRIT, "scsi_add_host returned %d", err);
		FUNC3(ESAS2R_LOG_CRIT, &(host->shost_gendev),
			       "scsi_add_host() FAIL");

		FUNC3(ESAS2R_LOG_INFO, &(host->shost_gendev),
			       "scsi_host_put() called");

		FUNC10(host);

		FUNC3(ESAS2R_LOG_INFO, &(host->shost_gendev),
			       "pci_set_drvdata(%p, NULL) called",
			       pcid);

		FUNC6(pcid, NULL);

		return -ENODEV;
	}


	FUNC0(a);

	FUNC3(ESAS2R_LOG_INFO, &(host->shost_gendev),
		       "scsi_scan_host() called");

	FUNC11(host);

	/* Add sysfs binary files */
	if (FUNC12(&host->shost_dev.kobj, &bin_attr_fw))
		FUNC3(ESAS2R_LOG_WARN, &(host->shost_gendev),
			       "Failed to create sysfs binary file: fw");
	else
		a->sysfs_fw_created = 1;

	if (FUNC12(&host->shost_dev.kobj, &bin_attr_fs))
		FUNC3(ESAS2R_LOG_WARN, &(host->shost_gendev),
			       "Failed to create sysfs binary file: fs");
	else
		a->sysfs_fs_created = 1;

	if (FUNC12(&host->shost_dev.kobj, &bin_attr_vda))
		FUNC3(ESAS2R_LOG_WARN, &(host->shost_gendev),
			       "Failed to create sysfs binary file: vda");
	else
		a->sysfs_vda_created = 1;

	if (FUNC12(&host->shost_dev.kobj, &bin_attr_hw))
		FUNC3(ESAS2R_LOG_WARN, &(host->shost_gendev),
			       "Failed to create sysfs binary file: hw");
	else
		a->sysfs_hw_created = 1;

	if (FUNC12(&host->shost_dev.kobj, &bin_attr_live_nvram))
		FUNC3(ESAS2R_LOG_WARN, &(host->shost_gendev),
			       "Failed to create sysfs binary file: live_nvram");
	else
		a->sysfs_live_nvram_created = 1;

	if (FUNC12(&host->shost_dev.kobj,
				  &bin_attr_default_nvram))
		FUNC3(ESAS2R_LOG_WARN, &(host->shost_gendev),
			       "Failed to create sysfs binary file: default_nvram");
	else
		a->sysfs_default_nvram_created = 1;

	found_adapters++;

	return 0;
}