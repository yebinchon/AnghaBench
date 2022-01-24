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
struct hpsa_scsi_dev_t {int dummy; } ;
struct ctlr_info {int ndevices; struct hpsa_scsi_dev_t** dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HPSA_MAX_DEVICES ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ctlr_info*,struct hpsa_scsi_dev_t*,char*) ; 

__attribute__((used)) static void FUNC2(struct ctlr_info *h, int entry,
	struct hpsa_scsi_dev_t *removed[], int *nremoved)
{
	/* assumes h->devlock is held */
	int i;
	struct hpsa_scsi_dev_t *sd;

	FUNC0(entry < 0 || entry >= HPSA_MAX_DEVICES);

	sd = h->dev[entry];
	removed[*nremoved] = h->dev[entry];
	(*nremoved)++;

	for (i = entry; i < h->ndevices-1; i++)
		h->dev[i] = h->dev[i+1];
	h->ndevices--;
	FUNC1(KERN_INFO, h, sd, "removed");
}