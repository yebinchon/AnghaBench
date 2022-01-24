#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct scsi_device {int dummy; } ;
struct megasas_instance {int* ld_ids; TYPE_4__* pd_list; struct MR_HOST_DEVICE_LIST* host_device_list_buf; scalar_t__ enable_fw_dev_list; struct Scsi_Host* host; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_5__ {scalar_t__ is_sys_pd; } ;
struct TYPE_6__ {TYPE_1__ bits; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct MR_HOST_DEVICE_LIST_ENTRY {int /*<<< orphan*/  target_id; TYPE_3__ flags; } ;
struct MR_HOST_DEVICE_LIST {int count; struct MR_HOST_DEVICE_LIST_ENTRY* host_device_list; } ;
struct TYPE_8__ {scalar_t__ driveState; } ;

/* Variables and functions */
 int MEGASAS_MAX_DEV_PER_CHANNEL ; 
 int MEGASAS_MAX_LD_CHANNELS ; 
 int MEGASAS_MAX_PD_CHANNELS ; 
 scalar_t__ MR_PD_STATE_SYSTEM ; 
 int SCAN_PD_CHANNEL ; 
 int SCAN_VD_CHANNEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*,int,int,int /*<<< orphan*/ ) ; 
 struct scsi_device* FUNC3 (struct Scsi_Host*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*) ; 

__attribute__((used)) static
void FUNC5(struct megasas_instance *instance,
				int scan_type)
{
	int i, j;
	u16 pd_index = 0;
	u16 ld_index = 0;
	u16 channel = 0, id = 0;
	struct Scsi_Host *host;
	struct scsi_device *sdev1;
	struct MR_HOST_DEVICE_LIST *targetid_list = NULL;
	struct MR_HOST_DEVICE_LIST_ENTRY *targetid_entry = NULL;

	host = instance->host;

	if (instance->enable_fw_dev_list) {
		targetid_list = instance->host_device_list_buf;
		for (i = 0; i < targetid_list->count; i++) {
			targetid_entry = &targetid_list->host_device_list[i];
			if (targetid_entry->flags.u.bits.is_sys_pd) {
				channel = FUNC0(targetid_entry->target_id) /
						MEGASAS_MAX_DEV_PER_CHANNEL;
				id = FUNC0(targetid_entry->target_id) %
						MEGASAS_MAX_DEV_PER_CHANNEL;
			} else {
				channel = MEGASAS_MAX_PD_CHANNELS +
					  (FUNC0(targetid_entry->target_id) /
					   MEGASAS_MAX_DEV_PER_CHANNEL);
				id = FUNC0(targetid_entry->target_id) %
						MEGASAS_MAX_DEV_PER_CHANNEL;
			}
			sdev1 = FUNC3(host, channel, id, 0);
			if (!sdev1) {
				FUNC2(host, channel, id, 0);
			} else {
				FUNC4(sdev1);
			}
		}
	}

	if (scan_type & SCAN_PD_CHANNEL) {
		for (i = 0; i < MEGASAS_MAX_PD_CHANNELS; i++) {
			for (j = 0; j < MEGASAS_MAX_DEV_PER_CHANNEL; j++) {
				pd_index = i * MEGASAS_MAX_DEV_PER_CHANNEL + j;
				sdev1 = FUNC3(host, i, j, 0);
				if (instance->pd_list[pd_index].driveState ==
							MR_PD_STATE_SYSTEM) {
					if (!sdev1)
						FUNC2(host, i, j, 0);
					else
						FUNC4(sdev1);
				} else {
					if (sdev1)
						FUNC1(sdev1);
				}
			}
		}
	}

	if (scan_type & SCAN_VD_CHANNEL) {
		for (i = 0; i < MEGASAS_MAX_LD_CHANNELS; i++) {
			for (j = 0; j < MEGASAS_MAX_DEV_PER_CHANNEL; j++) {
				ld_index = (i * MEGASAS_MAX_DEV_PER_CHANNEL) + j;
				sdev1 = FUNC3(host,
						MEGASAS_MAX_PD_CHANNELS + i, j, 0);
				if (instance->ld_ids[ld_index] != 0xff) {
					if (!sdev1)
						FUNC2(host, MEGASAS_MAX_PD_CHANNELS + i, j, 0);
					else
						FUNC4(sdev1);
				} else {
					if (sdev1)
						FUNC1(sdev1);
				}
			}
		}
	}

}