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
struct hpsa_scsi_dev_t {int /*<<< orphan*/  lun; int /*<<< orphan*/  target; int /*<<< orphan*/  bus; } ;
struct ctlr_info {int /*<<< orphan*/  sas_host; int /*<<< orphan*/  scsi_host; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct hpsa_scsi_dev_t*) ; 
 scalar_t__ FUNC1 (struct hpsa_scsi_dev_t*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ctlr_info *h, struct hpsa_scsi_dev_t *device)
{
	int rc = 0;

	if (!h->scsi_host)
		return 1;

	if (FUNC1(device)) /* RAID */
		rc = FUNC2(h->scsi_host, device->bus,
					device->target, device->lun);
	else /* HBA */
		rc = FUNC0(h->sas_host, device);

	return rc;
}