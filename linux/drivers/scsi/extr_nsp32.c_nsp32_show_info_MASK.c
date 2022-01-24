#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct Scsi_Host {int host_no; unsigned int io_port; int this_id; int /*<<< orphan*/  sg_tablesize; int /*<<< orphan*/  base; scalar_t__ n_io_port; int /*<<< orphan*/  irq; scalar_t__ hostdata; } ;
struct TYPE_5__ {TYPE_3__* target; int /*<<< orphan*/  Lock; int /*<<< orphan*/  CurrentSC; TYPE_1__* pci_devid; scalar_t__ MmioLength; } ;
typedef  TYPE_2__ nsp32_hw_data ;
struct TYPE_6__ {scalar_t__ sync_flag; int period; scalar_t__ offset; } ;
struct TYPE_4__ {long driver_data; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 scalar_t__ ASYNC_OFFSET ; 
 int /*<<< orphan*/  CHIP_MODE ; 
 int /*<<< orphan*/  INDEX_REG ; 
 unsigned char OEM0 ; 
 unsigned char OEM1 ; 
 unsigned char OPTF ; 
 scalar_t__ SDTR_DONE ; 
 unsigned char FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nsp32_model ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nsp32_release_version ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct seq_file *m, struct Scsi_Host *host)
{
	unsigned long     flags;
	nsp32_hw_data    *data;
	int               hostno;
	unsigned int      base;
	unsigned char     mode_reg;
	int               id, speed;
	long              model;

	hostno = host->host_no;
	data = (nsp32_hw_data *)host->hostdata;
	base = host->io_port;

	FUNC5(m, "NinjaSCSI-32 status\n\n");
	FUNC3(m, "Driver version:        %s, $Revision: 1.33 $\n", nsp32_release_version);
	FUNC3(m, "SCSI host No.:         %d\n",		hostno);
	FUNC3(m, "IRQ:                   %d\n",		host->irq);
	FUNC3(m, "IO:                    0x%lx-0x%lx\n", host->io_port, host->io_port + host->n_io_port - 1);
	FUNC3(m, "MMIO(virtual address): 0x%lx-0x%lx\n",	host->base, host->base + data->MmioLength - 1);
	FUNC3(m, "sg_tablesize:          %d\n",		host->sg_tablesize);
	FUNC3(m, "Chip revision:         0x%x\n",		(FUNC2(base, INDEX_REG) >> 8) & 0xff);

	mode_reg = FUNC1(base, CHIP_MODE);
	model    = data->pci_devid->driver_data;

#ifdef CONFIG_PM
	seq_printf(m, "Power Management:      %s\n",          (mode_reg & OPTF) ? "yes" : "no");
#endif
	FUNC3(m, "OEM:                   %ld, %s\n",     (mode_reg & (OEM0|OEM1)), nsp32_model[model]);

	FUNC6(&(data->Lock), flags);
	FUNC3(m, "CurrentSC:             0x%p\n\n",      data->CurrentSC);
	FUNC7(&(data->Lock), flags);


	FUNC5(m, "SDTR status\n");
	for (id = 0; id < FUNC0(data->target); id++) {

		FUNC3(m, "id %d: ", id);

		if (id == host->this_id) {
			FUNC5(m, "----- NinjaSCSI-32 host adapter\n");
			continue;
		}

		if (data->target[id].sync_flag == SDTR_DONE) {
			if (data->target[id].period == 0            &&
			    data->target[id].offset == ASYNC_OFFSET ) {
				FUNC5(m, "async");
			} else {
				FUNC5(m, " sync");
			}
		} else {
			FUNC5(m, " none");
		}

		if (data->target[id].period != 0) {

			speed = 1000000 / (data->target[id].period * 4);

			FUNC3(m, " transfer %d.%dMB/s, offset %d",
				speed / 1000,
				speed % 1000,
				data->target[id].offset
				);
		}
		FUNC4(m, '\n');
	}
	return 0;
}