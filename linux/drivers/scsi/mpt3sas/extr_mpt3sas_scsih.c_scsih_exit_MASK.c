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

/* Variables and functions */
 int /*<<< orphan*/  base_cb_idx ; 
 int /*<<< orphan*/  config_cb_idx ; 
 int /*<<< orphan*/  ctl_cb_idx ; 
 int hbas_to_enumerate ; 
 int /*<<< orphan*/  mpt2sas_raid_template ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpt3sas_raid_template ; 
 int /*<<< orphan*/  mpt3sas_transport_template ; 
 int /*<<< orphan*/  port_enable_cb_idx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scsi_io_cb_idx ; 
 int /*<<< orphan*/  scsih_cb_idx ; 
 int /*<<< orphan*/  tm_cb_idx ; 
 int /*<<< orphan*/  tm_sas_control_cb_idx ; 
 int /*<<< orphan*/  tm_tr_cb_idx ; 
 int /*<<< orphan*/  tm_tr_volume_cb_idx ; 
 int /*<<< orphan*/  transport_cb_idx ; 

__attribute__((used)) static void
FUNC3(void)
{

	FUNC0(scsi_io_cb_idx);
	FUNC0(tm_cb_idx);
	FUNC0(base_cb_idx);
	FUNC0(port_enable_cb_idx);
	FUNC0(transport_cb_idx);
	FUNC0(scsih_cb_idx);
	FUNC0(config_cb_idx);
	FUNC0(ctl_cb_idx);

	FUNC0(tm_tr_cb_idx);
	FUNC0(tm_tr_volume_cb_idx);
	FUNC0(tm_sas_control_cb_idx);

/* raid transport support */
	if (hbas_to_enumerate != 1)
		FUNC1(mpt3sas_raid_template);
	if (hbas_to_enumerate != 2)
		FUNC1(mpt2sas_raid_template);
	FUNC2(mpt3sas_transport_template);
}