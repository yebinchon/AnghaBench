#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_11__ {size_t target_id; int /*<<< orphan*/  scsi_cmd; } ;
typedef  TYPE_3__ ips_scb_t ;
struct TYPE_12__ {TYPE_2__* logical_drive_info; } ;
typedef  TYPE_4__ ips_ha_t ;
typedef  int /*<<< orphan*/  cap ;
struct TYPE_13__ {void* len; void* lba; } ;
struct TYPE_10__ {TYPE_1__* drive_info; } ;
struct TYPE_9__ {int /*<<< orphan*/  sector_count; } ;
typedef  TYPE_5__ IPS_SCSI_CAPACITY ;

/* Variables and functions */
 scalar_t__ IPS_BLKSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_5__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(ips_ha_t * ha, ips_scb_t * scb)
{
	IPS_SCSI_CAPACITY cap;

	FUNC0("ips_rdcap", 1);

	if (FUNC4(scb->scsi_cmd) < 8)
		return (0);

	cap.lba =
	    FUNC1(FUNC3
			(ha->logical_drive_info->
			 drive_info[scb->target_id].sector_count) - 1);
	cap.len = FUNC1((uint32_t) IPS_BLKSIZE);

	FUNC2(scb->scsi_cmd, &cap, sizeof (cap));

	return (1);
}