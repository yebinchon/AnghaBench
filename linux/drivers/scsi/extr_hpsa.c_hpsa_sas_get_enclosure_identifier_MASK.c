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
typedef  int /*<<< orphan*/  u64 ;
struct sas_rphy {int dummy; } ;
struct hpsa_scsi_dev_t {int /*<<< orphan*/  eli; } ;
struct ctlr_info {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 struct hpsa_scsi_dev_t* FUNC0 (struct ctlr_info*,struct sas_rphy*) ; 
 struct Scsi_Host* FUNC1 (struct sas_rphy*) ; 
 struct ctlr_info* FUNC2 (struct Scsi_Host*) ; 

__attribute__((used)) static int
FUNC3(struct sas_rphy *rphy, u64 *identifier)
{
	struct Scsi_Host *shost = FUNC1(rphy);
	struct ctlr_info *h;
	struct hpsa_scsi_dev_t *sd;

	if (!shost)
		return -ENXIO;

	h = FUNC2(shost);

	if (!h)
		return -ENXIO;

	sd = FUNC0(h, rphy);
	if (!sd)
		return -ENXIO;

	*identifier = sd->eli;

	return 0;
}