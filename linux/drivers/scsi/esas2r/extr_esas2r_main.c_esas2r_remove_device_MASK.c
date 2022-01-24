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
typedef  int /*<<< orphan*/  u16 ;
struct scsi_device {int /*<<< orphan*/  sdev_gendev; } ;
struct esas2r_adapter {TYPE_1__* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  shost_gendev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESAS2R_LOG_INFO ; 
 int /*<<< orphan*/  ESAS2R_LOG_WARN ; 
 int /*<<< orphan*/  SDEV_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 struct scsi_device* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*) ; 

__attribute__((used)) static void FUNC5(struct esas2r_adapter *a, u16 target_id)
{
	struct scsi_device *scsi_dev;

	scsi_dev = FUNC1(a->host, 0, target_id, 0);

	if (scsi_dev) {
		FUNC3(scsi_dev, SDEV_OFFLINE);

		FUNC0(
			ESAS2R_LOG_INFO,
			&(scsi_dev->
			  sdev_gendev),
			"scsi_remove_device() called for 0:%d:0",
			target_id);

		FUNC4(scsi_dev);

		FUNC0(
			ESAS2R_LOG_INFO,
			&(scsi_dev->
			  sdev_gendev),
			"scsi_device_put() called");

		FUNC2(scsi_dev);
	} else {
		FUNC0(
			ESAS2R_LOG_WARN,
			&(a->host->shost_gendev),
			"no target found at id %d",
			target_id);
	}
}