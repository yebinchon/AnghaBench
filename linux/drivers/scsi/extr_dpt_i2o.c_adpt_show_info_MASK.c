#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct adpt_device {struct adpt_device* next_lun; TYPE_5__* pScsi_dev; int /*<<< orphan*/  scsi_lun; scalar_t__ scsi_id; scalar_t__ scsi_channel; TYPE_3__* pI2o_dev; } ;
struct Scsi_Host {int /*<<< orphan*/  sg_tablesize; int /*<<< orphan*/  can_queue; int /*<<< orphan*/  irq; int /*<<< orphan*/  host_no; } ;
struct TYPE_10__ {TYPE_1__* channel; scalar_t__ reply_fifo_size; int /*<<< orphan*/  name; struct Scsi_Host* host; int /*<<< orphan*/  detail; struct TYPE_10__* next; } ;
typedef  TYPE_4__ adpt_hba ;
struct TYPE_11__ {int /*<<< orphan*/  rev; int /*<<< orphan*/  vendor; } ;
struct TYPE_8__ {int tid; } ;
struct TYPE_9__ {TYPE_2__ lct_data; } ;
struct TYPE_7__ {struct adpt_device** device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPT_I2O_VERSION ; 
 int MAX_CHANNEL ; 
 int MAX_ID ; 
 int /*<<< orphan*/  adpt_configuration_lock ; 
 TYPE_4__* hba_chain ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC5(struct seq_file *m, struct Scsi_Host *host)
{
	struct adpt_device* d;
	int id;
	int chan;
	adpt_hba* pHba;
	int unit;

	// Find HBA (host bus adapter) we are looking for
	FUNC0(&adpt_configuration_lock);
	for (pHba = hba_chain; pHba; pHba = pHba->next) {
		if (pHba->host == host) {
			break;	/* found adapter */
		}
	}
	FUNC1(&adpt_configuration_lock);
	if (pHba == NULL) {
		return 0;
	}
	host = pHba->host;

	FUNC3(m, "Adaptec I2O RAID Driver Version: %s\n\n", DPT_I2O_VERSION);
	FUNC3(m, "%s\n", pHba->detail);
	FUNC3(m, "SCSI Host=scsi%d  Control Node=/dev/%s  irq=%d\n", 
			pHba->host->host_no, pHba->name, host->irq);
	FUNC3(m, "\tpost fifo size  = %d\n\treply fifo size = %d\n\tsg table size   = %d\n\n",
			host->can_queue, (int) pHba->reply_fifo_size , host->sg_tablesize);

	FUNC4(m, "Devices:\n");
	for(chan = 0; chan < MAX_CHANNEL; chan++) {
		for(id = 0; id < MAX_ID; id++) {
			d = pHba->channel[chan].device[id];
			while(d) {
				FUNC3(m,"\t%-24.24s", d->pScsi_dev->vendor);
				FUNC3(m," Rev: %-8.8s\n", d->pScsi_dev->rev);

				unit = d->pI2o_dev->lct_data.tid;
				FUNC3(m, "\tTID=%d, (Channel=%d, Target=%d, Lun=%llu)  (%s)\n\n",
					       unit, (int)d->scsi_channel, (int)d->scsi_id, d->scsi_lun,
					       FUNC2(d->pScsi_dev)? "online":"offline"); 
				d = d->next_lun;
			}
		}
	}
	return 0;
}