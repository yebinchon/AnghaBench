#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scsi_host_template {int /*<<< orphan*/  name; int /*<<< orphan*/  this_id; } ;
struct Scsi_Host {int /*<<< orphan*/  irq; int /*<<< orphan*/  base; scalar_t__ n_io_port; scalar_t__ io_port; scalar_t__ unique_id; scalar_t__ hostdata; } ;
struct TYPE_6__ {int /*<<< orphan*/  nspinfo; int /*<<< orphan*/  Lock; int /*<<< orphan*/  MmioAddress; int /*<<< orphan*/  IrqNumber; scalar_t__ NumAddress; scalar_t__ BaseAddress; scalar_t__ CmdId; TYPE_1__* ScsiInfo; } ;
typedef  TYPE_2__ nsp_hw_data ;
struct TYPE_5__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  NSP_DEBUG_INIT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_2__*,int) ; 
 TYPE_2__ nsp_data_base ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  nsp_driver_template ; 
 struct Scsi_Host* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct Scsi_Host *FUNC5(struct scsi_host_template *sht)
{
	struct Scsi_Host *host;	/* registered host structure */
	nsp_hw_data *data_b = &nsp_data_base, *data;

	FUNC1(NSP_DEBUG_INIT, "this_id=%d", sht->this_id);
	host = FUNC2(&nsp_driver_template, sizeof(nsp_hw_data));
	if (host == NULL) {
		FUNC1(NSP_DEBUG_INIT, "host failed");
		return NULL;
	}

	FUNC0(host->hostdata, data_b, sizeof(nsp_hw_data));
	data = (nsp_hw_data *)host->hostdata;
	data->ScsiInfo->host = host;
#ifdef NSP_DEBUG
	data->CmdId = 0;
#endif

	FUNC1(NSP_DEBUG_INIT, "irq=%d,%d", data_b->IrqNumber, ((nsp_hw_data *)host->hostdata)->IrqNumber);

	host->unique_id	  = data->BaseAddress;
	host->io_port	  = data->BaseAddress;
	host->n_io_port	  = data->NumAddress;
	host->irq	  = data->IrqNumber;
	host->base        = data->MmioAddress;

	FUNC4(&(data->Lock));

	FUNC3(data->nspinfo,
		 sizeof(data->nspinfo),
		 "NinjaSCSI-3/32Bi Driver $Revision: 1.23 $ IO:0x%04lx-0x%04lx MMIO(virt addr):0x%04lx IRQ:%02d",
		 host->io_port, host->io_port + host->n_io_port - 1,
		 host->base,
		 host->irq);
	sht->name	  = data->nspinfo;

	FUNC1(NSP_DEBUG_INIT, "end");


	return host; /* detect done. */
}