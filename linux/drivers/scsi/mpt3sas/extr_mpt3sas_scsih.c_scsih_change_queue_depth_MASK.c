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
struct scsi_device {int /*<<< orphan*/  tagged_supported; struct MPT3SAS_DEVICE* hostdata; struct Scsi_Host* host; } ;
struct _sas_device {int device_info; } ;
struct Scsi_Host {int can_queue; } ;
struct MPT3SAS_TARGET {int flags; } ;
struct MPT3SAS_DEVICE {struct MPT3SAS_TARGET* sas_target; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  sas_device_lock; scalar_t__ enable_sdev_max_qd; } ;

/* Variables and functions */
 int MPI2_SAS_DEVICE_INFO_SATA_DEVICE ; 
 int MPT3SAS_SATA_QUEUE_DEPTH ; 
 int MPT_TARGET_FLAGS_VOLUME ; 
 struct _sas_device* FUNC0 (struct MPT3SAS_ADAPTER*,struct MPT3SAS_TARGET*) ; 
 int /*<<< orphan*/  FUNC1 (struct _sas_device*) ; 
 int FUNC2 (struct scsi_device*,int) ; 
 struct MPT3SAS_ADAPTER* FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC6(struct scsi_device *sdev, int qdepth)
{
	struct Scsi_Host *shost = sdev->host;
	int max_depth;
	struct MPT3SAS_ADAPTER *ioc = FUNC3(shost);
	struct MPT3SAS_DEVICE *sas_device_priv_data;
	struct MPT3SAS_TARGET *sas_target_priv_data;
	struct _sas_device *sas_device;
	unsigned long flags;

	max_depth = shost->can_queue;

	/*
	 * limit max device queue for SATA to 32 if enable_sdev_max_qd
	 * is disabled.
	 */
	if (ioc->enable_sdev_max_qd)
		goto not_sata;

	sas_device_priv_data = sdev->hostdata;
	if (!sas_device_priv_data)
		goto not_sata;
	sas_target_priv_data = sas_device_priv_data->sas_target;
	if (!sas_target_priv_data)
		goto not_sata;
	if ((sas_target_priv_data->flags & MPT_TARGET_FLAGS_VOLUME))
		goto not_sata;

	FUNC4(&ioc->sas_device_lock, flags);
	sas_device = FUNC0(ioc, sas_target_priv_data);
	if (sas_device) {
		if (sas_device->device_info & MPI2_SAS_DEVICE_INFO_SATA_DEVICE)
			max_depth = MPT3SAS_SATA_QUEUE_DEPTH;

		FUNC1(sas_device);
	}
	FUNC5(&ioc->sas_device_lock, flags);

 not_sata:

	if (!sdev->tagged_supported)
		max_depth = 1;
	if (qdepth > max_depth)
		qdepth = max_depth;
	return FUNC2(sdev, qdepth);
}