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
typedef  size_t u32 ;
struct sata_start_req {int fis_type; int flags; int lbal; int sector_count; int ncqtag_atap_dir_m_dad; int /*<<< orphan*/  sata_fis; void* device_id; void* tag; int /*<<< orphan*/  command; } ;
struct sas_task {struct domain_device* dev; int /*<<< orphan*/  task_done; } ;
struct pm8001_hba_info {struct inbound_queue_table* inbnd_q_tbl; struct pm8001_ccb_info* ccb_info; } ;
struct pm8001_device {size_t device_id; int /*<<< orphan*/  id; } ;
struct pm8001_ccb_info {size_t ccb_tag; scalar_t__ n_elem; struct sas_task* task; struct pm8001_device* device; } ;
struct inbound_queue_table {int dummy; } ;
struct host_to_dev_fis {int fis_type; int flags; int lbal; int sector_count; int ncqtag_atap_dir_m_dad; int /*<<< orphan*/  sata_fis; void* device_id; void* tag; int /*<<< orphan*/  command; } ;
struct domain_device {struct pm8001_device* lldd_dev; } ;
typedef  int /*<<< orphan*/  sata_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_CMD_READ_LOG_EXT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NCQ_2ND_RLE_FLAG ; 
 int /*<<< orphan*/  NCQ_READ_LOG_FLAG ; 
 size_t OPC_INB_SATA_HOST_OPSTART ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct domain_device*) ; 
 struct domain_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sata_start_req*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sata_start_req*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct pm8001_hba_info*,struct inbound_queue_table*,size_t,struct sata_start_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (struct pm8001_hba_info*,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (struct pm8001_hba_info*,size_t) ; 
 int /*<<< orphan*/  pm8001_task_done ; 
 struct sas_task* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sas_task*) ; 

__attribute__((used)) static void FUNC12(struct pm8001_hba_info *pm8001_ha,
		struct pm8001_device *pm8001_ha_dev)
{
	struct sata_start_req sata_cmd;
	int res;
	u32 ccb_tag;
	struct pm8001_ccb_info *ccb;
	struct sas_task *task = NULL;
	struct host_to_dev_fis fis;
	struct domain_device *dev;
	struct inbound_queue_table *circularQ;
	u32 opc = OPC_INB_SATA_HOST_OPSTART;

	task = FUNC10(GFP_ATOMIC);

	if (!task) {
		FUNC0(pm8001_ha,
			FUNC7("cannot allocate task !!!\n"));
		return;
	}
	task->task_done = pm8001_task_done;

	res = FUNC8(pm8001_ha, &ccb_tag);
	if (res) {
		FUNC11(task);
		FUNC0(pm8001_ha,
			FUNC7("cannot allocate tag !!!\n"));
		return;
	}

	/* allocate domain device by ourselves as libsas
	 * is not going to provide any
	*/
	dev = FUNC3(sizeof(struct domain_device), GFP_ATOMIC);
	if (!dev) {
		FUNC11(task);
		FUNC9(pm8001_ha, ccb_tag);
		FUNC0(pm8001_ha,
			FUNC7("Domain device cannot be allocated\n"));
		return;
	}

	task->dev = dev;
	task->dev->lldd_dev = pm8001_ha_dev;

	ccb = &pm8001_ha->ccb_info[ccb_tag];
	ccb->device = pm8001_ha_dev;
	ccb->ccb_tag = ccb_tag;
	ccb->task = task;
	ccb->n_elem = 0;
	pm8001_ha_dev->id |= NCQ_READ_LOG_FLAG;
	pm8001_ha_dev->id |= NCQ_2ND_RLE_FLAG;

	FUNC5(&sata_cmd, 0, sizeof(sata_cmd));
	circularQ = &pm8001_ha->inbnd_q_tbl[0];

	/* construct read log FIS */
	FUNC5(&fis, 0, sizeof(struct host_to_dev_fis));
	fis.fis_type = 0x27;
	fis.flags = 0x80;
	fis.command = ATA_CMD_READ_LOG_EXT;
	fis.lbal = 0x10;
	fis.sector_count = 0x1;

	sata_cmd.tag = FUNC1(ccb_tag);
	sata_cmd.device_id = FUNC1(pm8001_ha_dev->device_id);
	sata_cmd.ncqtag_atap_dir_m_dad |= ((0x1 << 7) | (0x5 << 9));
	FUNC4(&sata_cmd.sata_fis, &fis, sizeof(struct host_to_dev_fis));

	res = FUNC6(pm8001_ha, circularQ, opc, &sata_cmd, 0);
	if (res) {
		FUNC11(task);
		FUNC9(pm8001_ha, ccb_tag);
		FUNC2(dev);
	}
}