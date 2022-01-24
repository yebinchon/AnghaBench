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
struct scsi_target {int /*<<< orphan*/  dev; struct MPT3SAS_TARGET* hostdata; } ;
struct scsi_device {int /*<<< orphan*/ * hostdata; } ;
struct _sas_device {int /*<<< orphan*/ * starget; } ;
struct _pcie_device {int /*<<< orphan*/ * starget; } ;
struct Scsi_Host {int dummy; } ;
struct MPT3SAS_TARGET {int flags; int /*<<< orphan*/  num_luns; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  sas_device_lock; int /*<<< orphan*/  pcie_device_lock; } ;

/* Variables and functions */
 int MPT_TARGET_FLAGS_PCIE_DEVICE ; 
 int MPT_TARGET_FLAGS_VOLUME ; 
 struct _pcie_device* FUNC0 (struct MPT3SAS_ADAPTER*,struct MPT3SAS_TARGET*) ; 
 struct _sas_device* FUNC1 (struct MPT3SAS_ADAPTER*,struct MPT3SAS_TARGET*) ; 
 struct Scsi_Host* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct _pcie_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct _sas_device*) ; 
 struct scsi_target* FUNC6 (struct scsi_device*) ; 
 struct MPT3SAS_ADAPTER* FUNC7 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC10(struct scsi_device *sdev)
{
	struct MPT3SAS_TARGET *sas_target_priv_data;
	struct scsi_target *starget;
	struct Scsi_Host *shost;
	struct MPT3SAS_ADAPTER *ioc;
	struct _sas_device *sas_device;
	struct _pcie_device *pcie_device;
	unsigned long flags;

	if (!sdev->hostdata)
		return;

	starget = FUNC6(sdev);
	sas_target_priv_data = starget->hostdata;
	sas_target_priv_data->num_luns--;

	shost = FUNC2(&starget->dev);
	ioc = FUNC7(shost);

	if (sas_target_priv_data->flags & MPT_TARGET_FLAGS_PCIE_DEVICE) {
		FUNC8(&ioc->pcie_device_lock, flags);
		pcie_device = FUNC0(ioc,
				sas_target_priv_data);
		if (pcie_device && !sas_target_priv_data->num_luns)
			pcie_device->starget = NULL;

		if (pcie_device)
			FUNC4(pcie_device);

		FUNC9(&ioc->pcie_device_lock, flags);

	} else if (!(sas_target_priv_data->flags & MPT_TARGET_FLAGS_VOLUME)) {
		FUNC8(&ioc->sas_device_lock, flags);
		sas_device = FUNC1(ioc,
				sas_target_priv_data);
		if (sas_device && !sas_target_priv_data->num_luns)
			sas_device->starget = NULL;

		if (sas_device)
			FUNC5(sas_device);
		FUNC9(&ioc->sas_device_lock, flags);
	}

	FUNC3(sdev->hostdata);
	sdev->hostdata = NULL;
}