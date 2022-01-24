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
struct scsi_device {int /*<<< orphan*/  lun; int /*<<< orphan*/  id; TYPE_1__* host; } ;
struct DeviceCtlBlk {int dummy; } ;
struct AdapterCtlBlk {int dummy; } ;
struct TYPE_2__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct AdapterCtlBlk*,struct DeviceCtlBlk*) ; 
 struct DeviceCtlBlk* FUNC1 (struct AdapterCtlBlk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct scsi_device *scsi_device)
{
	struct AdapterCtlBlk *acb = (struct AdapterCtlBlk *)scsi_device->host->hostdata;
	struct DeviceCtlBlk *dcb = FUNC1(acb, scsi_device->id, scsi_device->lun);
	if (dcb)
		FUNC0(acb, dcb);
}