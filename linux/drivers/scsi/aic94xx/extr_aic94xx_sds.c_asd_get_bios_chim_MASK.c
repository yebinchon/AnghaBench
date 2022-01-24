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
typedef  int u32 ;
struct asd_ocm_dir {int dummy; } ;
struct TYPE_5__ {int num; int size; struct asd_bios_chim_struct* area; } ;
struct TYPE_4__ {int present; int /*<<< orphan*/  bld; int /*<<< orphan*/  min; int /*<<< orphan*/  maj; } ;
struct TYPE_6__ {TYPE_2__ ue; TYPE_1__ bios; } ;
struct asd_ha_struct {TYPE_3__ hw_prof; } ;
struct asd_bios_chim_struct {int major; int flags; int /*<<< orphan*/  ue_size; int /*<<< orphan*/  ue_num; int /*<<< orphan*/  bios_build; int /*<<< orphan*/  bios_minor; int /*<<< orphan*/  bios_major; int /*<<< orphan*/ * sig; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int BC_BIOS_PRESENT ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OCM_BIOS_CHIM_DE ; 
 int FUNC1 (struct asd_ocm_dir*,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct asd_ha_struct*,void*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct asd_bios_chim_struct*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC9(struct asd_ha_struct *asd_ha,
			     struct asd_ocm_dir *dir)
{
	int err;
	struct asd_bios_chim_struct *bc_struct;
	u32 offs, size;

	err = FUNC1(dir, OCM_BIOS_CHIM_DE, &offs, &size);
	if (err) {
		FUNC0("couldn't find BIOS_CHIM dir ent\n");
		goto out;
	}
	err = -ENOMEM;
	bc_struct = FUNC5(sizeof(*bc_struct), GFP_KERNEL);
	if (!bc_struct) {
		FUNC2("no memory for bios_chim struct\n");
		goto out;
	}
	err = FUNC3(asd_ha, (void *)bc_struct, offs,
			       sizeof(*bc_struct));
	if (err) {
		FUNC0("couldn't read ocm segment\n");
		goto out2;
	}
	if (FUNC8(bc_struct->sig, "SOIB", 4)
	    && FUNC8(bc_struct->sig, "IPSA", 4)) {
		FUNC0("BIOS_CHIM entry has no valid sig(%c%c%c%c)\n",
			    bc_struct->sig[0], bc_struct->sig[1],
			    bc_struct->sig[2], bc_struct->sig[3]);
		err = -ENOENT;
		goto out2;
	}
	if (bc_struct->major != 1) {
		FUNC2("BIOS_CHIM unsupported major version:0x%x\n",
			   bc_struct->major);
		err = -ENOENT;
		goto out2;
	}
	if (bc_struct->flags & BC_BIOS_PRESENT) {
		asd_ha->hw_prof.bios.present = 1;
		asd_ha->hw_prof.bios.maj = bc_struct->bios_major;
		asd_ha->hw_prof.bios.min = bc_struct->bios_minor;
		asd_ha->hw_prof.bios.bld = FUNC7(bc_struct->bios_build);
		FUNC0("BIOS present (%d,%d), %d\n",
			    asd_ha->hw_prof.bios.maj,
			    asd_ha->hw_prof.bios.min,
			    asd_ha->hw_prof.bios.bld);
	}
	asd_ha->hw_prof.ue.num = FUNC6(bc_struct->ue_num);
	asd_ha->hw_prof.ue.size= FUNC6(bc_struct->ue_size);
	FUNC0("ue num:%d, ue size:%d\n", asd_ha->hw_prof.ue.num,
		    asd_ha->hw_prof.ue.size);
	size = asd_ha->hw_prof.ue.num * asd_ha->hw_prof.ue.size;
	if (size > 0) {
		err = -ENOMEM;
		asd_ha->hw_prof.ue.area = FUNC5(size, GFP_KERNEL);
		if (!asd_ha->hw_prof.ue.area)
			goto out2;
		err = FUNC3(asd_ha, (void *)asd_ha->hw_prof.ue.area,
				       offs + sizeof(*bc_struct), size);
		if (err) {
			FUNC4(asd_ha->hw_prof.ue.area);
			asd_ha->hw_prof.ue.area = NULL;
			asd_ha->hw_prof.ue.num  = 0;
			asd_ha->hw_prof.ue.size = 0;
			FUNC0("couldn't read ue entries(%d)\n", err);
		}
	}
out2:
	FUNC4(bc_struct);
out:
	return err;
}