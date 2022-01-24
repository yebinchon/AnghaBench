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
typedef  int uint8_t ;
struct pci_device_id {int /*<<< orphan*/  driver_data; } ;
struct pci_dev {int devfn; int /*<<< orphan*/  dev; TYPE_1__* bus; } ;
struct Scsi_Host {int max_cmd_len; int unique_id; int /*<<< orphan*/  this_id; scalar_t__ cmd_per_lun; scalar_t__ can_queue; int /*<<< orphan*/  max_id; int /*<<< orphan*/  max_lun; scalar_t__ hostdata; } ;
struct AdapterControlBlock {int acb_flags; int /*<<< orphan*/  arcmsr_do_message_isr_bh; int /*<<< orphan*/  eternal_timer; int /*<<< orphan*/  refresh_timer; int /*<<< orphan*/  ccb_free_list; int /*<<< orphan*/  wqbuffer_lock; int /*<<< orphan*/  rqbuffer_lock; int /*<<< orphan*/  doneq_lock; int /*<<< orphan*/  postq_lock; int /*<<< orphan*/  ccblist_lock; int /*<<< orphan*/  eh_lock; struct Scsi_Host* host; int /*<<< orphan*/  adapter_type; struct pci_dev* pdev; } ;
struct TYPE_2__ {int number; } ;

/* Variables and functions */
 int ACB_F_MESSAGE_RQBUFFER_CLEARED ; 
 int ACB_F_MESSAGE_WQBUFFER_CLEARED ; 
 int ACB_F_MESSAGE_WQBUFFER_READED ; 
 int ACB_F_SCSISTOPADAPTER ; 
 scalar_t__ ARCMSR_DEFAULT_CMD_PERLUN ; 
 scalar_t__ ARCMSR_DEFAULT_OUTSTANDING_CMD ; 
 scalar_t__ ARCMSR_MAX_CMD_PERLUN ; 
 scalar_t__ ARCMSR_MAX_OUTSTANDING_CMD ; 
 int /*<<< orphan*/  ARCMSR_MAX_TARGETID ; 
 int /*<<< orphan*/  ARCMSR_MAX_TARGETLUN ; 
 scalar_t__ ARCMSR_MIN_CMD_PERLUN ; 
 scalar_t__ ARCMSR_MIN_OUTSTANDING_CMD ; 
 int /*<<< orphan*/  ARCMSR_SCSI_INITIATOR_ID ; 
 int ENODEV ; 
 scalar_t__ FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct AdapterControlBlock*) ; 
 int FUNC2 (struct AdapterControlBlock*) ; 
 scalar_t__ FUNC3 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC4 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC5 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC6 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,struct AdapterControlBlock*) ; 
 int FUNC8 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC9 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC10 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC11 (struct AdapterControlBlock*) ; 
 int FUNC12 (struct AdapterControlBlock*) ; 
 scalar_t__ FUNC13 (struct pci_dev*,struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  arcmsr_scsi_host_template ; 
 scalar_t__ FUNC14 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC15 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC16 (struct AdapterControlBlock*) ; 
 scalar_t__ cmd_per_lun ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ host_can_queue ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct AdapterControlBlock*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*) ; 
 int FUNC22 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int FUNC24 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC25 (struct pci_dev*,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC26 (struct pci_dev*) ; 
 int FUNC27 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC28 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC29 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC30 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC31 (struct Scsi_Host*) ; 
 scalar_t__ set_date_time ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait_q ; 

__attribute__((used)) static int FUNC33(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct Scsi_Host *host;
	struct AdapterControlBlock *acb;
	uint8_t bus,dev_fun;
	int error;
	error = FUNC22(pdev);
	if(error){
		return -ENODEV;
	}
	host = FUNC28(&arcmsr_scsi_host_template, sizeof(struct AdapterControlBlock));
	if(!host){
    		goto pci_disable_dev;
	}
	FUNC19(&wait_q);
	bus = pdev->bus->number;
	dev_fun = pdev->devfn;
	acb = (struct AdapterControlBlock *) host->hostdata;
	FUNC20(acb,0,sizeof(struct AdapterControlBlock));
	acb->pdev = pdev;
	acb->adapter_type = id->driver_data;
	if (FUNC14(acb))
		goto scsi_host_release;
	acb->host = host;
	host->max_lun = ARCMSR_MAX_TARGETLUN;
	host->max_id = ARCMSR_MAX_TARGETID;		/*16:8*/
	host->max_cmd_len = 16;	 			/*this is issue of 64bit LBA ,over 2T byte*/
	if ((host_can_queue < ARCMSR_MIN_OUTSTANDING_CMD) || (host_can_queue > ARCMSR_MAX_OUTSTANDING_CMD))
		host_can_queue = ARCMSR_DEFAULT_OUTSTANDING_CMD;
	host->can_queue = host_can_queue;	/* max simultaneous cmds */
	if ((cmd_per_lun < ARCMSR_MIN_CMD_PERLUN) || (cmd_per_lun > ARCMSR_MAX_CMD_PERLUN))
		cmd_per_lun = ARCMSR_DEFAULT_CMD_PERLUN;
	host->cmd_per_lun = cmd_per_lun;
	host->this_id = ARCMSR_SCSI_INITIATOR_ID;
	host->unique_id = (bus << 8) | dev_fun;
	FUNC25(pdev, host);
	FUNC26(pdev);
	error = FUNC24(pdev, "arcmsr");
	if(error){
		goto scsi_host_release;
	}
	FUNC32(&acb->eh_lock);
	FUNC32(&acb->ccblist_lock);
	FUNC32(&acb->postq_lock);
	FUNC32(&acb->doneq_lock);
	FUNC32(&acb->rqbuffer_lock);
	FUNC32(&acb->wqbuffer_lock);
	acb->acb_flags |= (ACB_F_MESSAGE_WQBUFFER_CLEARED |
			ACB_F_MESSAGE_RQBUFFER_CLEARED |
			ACB_F_MESSAGE_WQBUFFER_READED);
	acb->acb_flags &= ~ACB_F_SCSISTOPADAPTER;
	FUNC0(&acb->ccb_free_list);
	error = FUNC12(acb);
	if(!error){
		goto pci_release_regs;
	}
	error = FUNC2(acb);
	if (!error)
		goto unmap_pci_region;
	error = FUNC8(acb);
	if(!error){
		goto free_hbb_mu;
	}
	FUNC6(acb);
	error = FUNC1(acb);
	if(error){
		goto unmap_pci_region;
	}
	error = FUNC27(host, &pdev->dev);
	if(error){
		goto free_ccb_pool;
	}
	if (FUNC13(pdev, acb) == FAILED)
		goto scsi_host_remove;
	FUNC11(acb);
	FUNC9(acb);
	if (set_date_time)
		FUNC10(acb);
	if(FUNC3(acb))
		goto out_free_sysfs;
	FUNC31(host);
	return 0;
out_free_sysfs:
	if (set_date_time)
		FUNC17(&acb->refresh_timer);
	FUNC17(&acb->eternal_timer);
	FUNC18(&acb->arcmsr_do_message_isr_bh);
	FUNC15(acb);
	FUNC4(acb);
	FUNC7(pdev, acb);
scsi_host_remove:
	FUNC30(host);
free_ccb_pool:
	FUNC5(acb);
	goto unmap_pci_region;
free_hbb_mu:
	FUNC6(acb);
unmap_pci_region:
	FUNC16(acb);
pci_release_regs:
	FUNC23(pdev);
scsi_host_release:
	FUNC29(host);
pci_disable_dev:
	FUNC21(pdev);
	return -ENODEV;
}