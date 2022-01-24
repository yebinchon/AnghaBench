#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct nvram {TYPE_7__* bus; } ;
struct scsi_qla_host {TYPE_8__* host; TYPE_2__* bus_settings; struct nvram nvram; } ;
struct scsi_device {int channel; int id; scalar_t__ ppr; scalar_t__ wdtr; scalar_t__ sdtr; scalar_t__ tagged_supported; TYPE_1__* host; } ;
struct TYPE_18__ {int sync_mask; int wide_mask; int ppr_mask; scalar_t__ no_ppr; scalar_t__ no_wide; scalar_t__ no_sync; } ;
struct TYPE_17__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_16__ {TYPE_6__* target; } ;
struct TYPE_14__ {scalar_t__ enable_sync; scalar_t__ enable_wide; } ;
struct TYPE_12__ {scalar_t__ enable_ppr; } ;
struct TYPE_13__ {TYPE_3__ flags; } ;
struct TYPE_15__ {TYPE_5__ parameter; TYPE_4__ ppr_1x160; } ;
struct TYPE_11__ {int qtag_enables; int hiwat; } ;
struct TYPE_10__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int BIT_0 ; 
 scalar_t__ FUNC0 (struct scsi_qla_host*) ; 
 TYPE_9__ driver_setup ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*,struct scsi_device*) ; 
 int FUNC3 (struct scsi_qla_host*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int
FUNC7(struct scsi_device *device)
{
	struct scsi_qla_host *ha;
	int default_depth = 3;
	int bus = device->channel;
	int target = device->id;
	int status = 0;
	struct nvram *nv;
	unsigned long flags;

	ha = (struct scsi_qla_host *)device->host->hostdata;
	nv = &ha->nvram;

	if (FUNC1(ha, bus))
		return 1;

	if (device->tagged_supported &&
	    (ha->bus_settings[bus].qtag_enables & (BIT_0 << target))) {
		FUNC4(device, ha->bus_settings[bus].hiwat);
	} else {
		FUNC4(device, default_depth);
	}

	nv->bus[bus].target[target].parameter.enable_sync = device->sdtr;
	nv->bus[bus].target[target].parameter.enable_wide = device->wdtr;
	nv->bus[bus].target[target].ppr_1x160.flags.enable_ppr = device->ppr;

	if (driver_setup.no_sync ||
	    (driver_setup.sync_mask &&
	     (~driver_setup.sync_mask & (1 << target))))
		nv->bus[bus].target[target].parameter.enable_sync = 0;
	if (driver_setup.no_wide ||
	    (driver_setup.wide_mask &&
	     (~driver_setup.wide_mask & (1 << target))))
		nv->bus[bus].target[target].parameter.enable_wide = 0;
	if (FUNC0(ha)) {
		if (driver_setup.no_ppr ||
		    (driver_setup.ppr_mask &&
		     (~driver_setup.ppr_mask & (1 << target))))
			nv->bus[bus].target[target].ppr_1x160.flags.enable_ppr = 0;
	}

	FUNC5(ha->host->host_lock, flags);
	if (nv->bus[bus].target[target].parameter.enable_sync)
		status = FUNC3(ha, bus, target);
	FUNC2(ha, device);
	FUNC6(ha->host->host_lock, flags);
	return status;
}