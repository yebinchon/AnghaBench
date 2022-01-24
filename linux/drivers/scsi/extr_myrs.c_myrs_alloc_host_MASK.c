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
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct myrs_hba {struct Scsi_Host* host; int /*<<< orphan*/  cinfo_mutex; int /*<<< orphan*/  dcmd_mutex; } ;
struct Scsi_Host {int max_cmd_len; int max_lun; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  myrs_template ; 
 struct Scsi_Host* FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct myrs_hba* FUNC2 (struct Scsi_Host*) ; 

__attribute__((used)) static struct myrs_hba *FUNC3(struct pci_dev *pdev,
		const struct pci_device_id *entry)
{
	struct Scsi_Host *shost;
	struct myrs_hba *cs;

	shost = FUNC1(&myrs_template, sizeof(struct myrs_hba));
	if (!shost)
		return NULL;

	shost->max_cmd_len = 16;
	shost->max_lun = 256;
	cs = FUNC2(shost);
	FUNC0(&cs->dcmd_mutex);
	FUNC0(&cs->cinfo_mutex);
	cs->host = shost;

	return cs;
}