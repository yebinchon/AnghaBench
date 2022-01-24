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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct myrs_sge {int dummy; } ;
struct myrs_hba {int /*<<< orphan*/  monitor_work; int /*<<< orphan*/  work_q; int /*<<< orphan*/ * sense_pool; int /*<<< orphan*/ * sg_pool; int /*<<< orphan*/ * dcdb_pool; int /*<<< orphan*/  work_q_name; struct Scsi_Host* host; } ;
struct Scsi_Host {size_t sg_tablesize; int host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 size_t MYRS_DCDB_SIZE ; 
 size_t MYRS_SENSE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  myrs_monitor ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct Scsi_Host*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static bool FUNC7(struct pci_dev *pdev, struct myrs_hba *cs)
{
	struct Scsi_Host *shost = cs->host;
	size_t elem_size, elem_align;

	elem_align = sizeof(struct myrs_sge);
	elem_size = shost->sg_tablesize * elem_align;
	cs->sg_pool = FUNC2("myrs_sg", &pdev->dev,
				      elem_size, elem_align, 0);
	if (cs->sg_pool == NULL) {
		FUNC5(KERN_ERR, shost,
			     "Failed to allocate SG pool\n");
		return false;
	}

	cs->sense_pool = FUNC2("myrs_sense", &pdev->dev,
					 MYRS_SENSE_SIZE, sizeof(int), 0);
	if (cs->sense_pool == NULL) {
		FUNC3(cs->sg_pool);
		cs->sg_pool = NULL;
		FUNC5(KERN_ERR, shost,
			     "Failed to allocate sense data pool\n");
		return false;
	}

	cs->dcdb_pool = FUNC2("myrs_dcdb", &pdev->dev,
					MYRS_DCDB_SIZE,
					sizeof(unsigned char), 0);
	if (!cs->dcdb_pool) {
		FUNC3(cs->sg_pool);
		cs->sg_pool = NULL;
		FUNC3(cs->sense_pool);
		cs->sense_pool = NULL;
		FUNC5(KERN_ERR, shost,
			     "Failed to allocate DCDB pool\n");
		return false;
	}

	FUNC6(cs->work_q_name, sizeof(cs->work_q_name),
		 "myrs_wq_%d", shost->host_no);
	cs->work_q = FUNC1(cs->work_q_name);
	if (!cs->work_q) {
		FUNC3(cs->dcdb_pool);
		cs->dcdb_pool = NULL;
		FUNC3(cs->sg_pool);
		cs->sg_pool = NULL;
		FUNC3(cs->sense_pool);
		cs->sense_pool = NULL;
		FUNC5(KERN_ERR, shost,
			     "Failed to create workqueue\n");
		return false;
	}

	/* Initialize the Monitoring Timer. */
	FUNC0(&cs->monitor_work, myrs_monitor);
	FUNC4(cs->work_q, &cs->monitor_work, 1);

	return true;
}