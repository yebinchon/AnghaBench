#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct scsi_device {int /*<<< orphan*/  request_queue; TYPE_1__* host; } ;
struct megasas_instance {scalar_t__ nvme_page_size; TYPE_2__* tgt_prop; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_io_size_kb; } ;
struct TYPE_3__ {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int HZ ; 
 int MR_DEFAULT_NVME_MDTS_KB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct megasas_instance* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*,int) ; 
 int scmd_timeout ; 

__attribute__((used)) static void FUNC5(struct scsi_device *sdev,
						 bool is_target_prop)
{
	u32 max_io_size_kb = MR_DEFAULT_NVME_MDTS_KB;
	struct megasas_instance *instance;

	instance = FUNC2(sdev->host->host_no);

	/*
	 * The RAID firmware may require extended timeouts.
	 */
	FUNC0(sdev->request_queue, scmd_timeout * HZ);

	/* max_io_size_kb will be set to non zero for
	 * nvme based vd and syspd.
	 */
	if (is_target_prop)
		max_io_size_kb = FUNC1(instance->tgt_prop->max_io_size_kb);

	if (instance->nvme_page_size && max_io_size_kb)
		FUNC4(sdev, (max_io_size_kb << 10));

	FUNC3(sdev, is_target_prop);
}