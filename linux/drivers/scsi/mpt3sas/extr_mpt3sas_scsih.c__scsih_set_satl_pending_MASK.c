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
struct scsi_cmnd {scalar_t__* cmnd; TYPE_1__* device; } ;
struct MPT3SAS_DEVICE {int /*<<< orphan*/  ata_command_pending; } ;
struct TYPE_2__ {struct MPT3SAS_DEVICE* hostdata; } ;

/* Variables and functions */
 scalar_t__ ATA_12 ; 
 scalar_t__ ATA_16 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct scsi_cmnd *scmd, bool pending)
{
	struct MPT3SAS_DEVICE *priv = scmd->device->hostdata;

	if (scmd->cmnd[0] != ATA_12 && scmd->cmnd[0] != ATA_16)
		return 0;

	if (pending)
		return FUNC1(0, &priv->ata_command_pending);

	FUNC0(0, &priv->ata_command_pending);
	return 0;
}