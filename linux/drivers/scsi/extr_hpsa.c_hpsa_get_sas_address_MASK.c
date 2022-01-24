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
typedef  void* u64 ;
struct hpsa_scsi_dev_t {void* sas_address; } ;
struct ctlr_info {void* sas_address; } ;
struct bmic_sense_subsystem_info {int /*<<< orphan*/  primary_world_wide_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ctlr_info*,unsigned char*,int /*<<< orphan*/ ,struct bmic_sense_subsystem_info*,int) ; 
 void* FUNC2 (struct ctlr_info*,unsigned char*) ; 
 scalar_t__ FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (struct bmic_sense_subsystem_info*) ; 
 struct bmic_sense_subsystem_info* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ctlr_info *h, unsigned char *scsi3addr,
					struct hpsa_scsi_dev_t *dev)
{
	int rc;
	u64 sa = 0;

	if (FUNC3(scsi3addr)) {
		struct bmic_sense_subsystem_info *ssi;

		ssi = FUNC5(sizeof(*ssi), GFP_KERNEL);
		if (!ssi)
			return;

		rc = FUNC1(h,
					scsi3addr, 0, ssi, sizeof(*ssi));
		if (rc == 0) {
			sa = FUNC0(ssi->primary_world_wide_id);
			h->sas_address = sa;
		}

		FUNC4(ssi);
	} else
		sa = FUNC2(h, scsi3addr);

	dev->sas_address = sa;
}