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
typedef  int /*<<< orphan*/  u8 ;
typedef  void* u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct t10_reservation {int /*<<< orphan*/  aptpl_reg_list; } ;
struct t10_pr_registration {int pr_reg_all_tg_pt; int pr_reg_aptpl; int isid_present_at_reg; int pr_res_holder; int /*<<< orphan*/  pr_reg_aptpl_list; int /*<<< orphan*/  pr_reg_tpgt; int /*<<< orphan*/  pr_tport; int /*<<< orphan*/  pr_iport; int /*<<< orphan*/  pr_reg_isid; int /*<<< orphan*/  pr_reg_bin_isid; int /*<<< orphan*/  pr_res_type; scalar_t__ pr_res_scope; void* pr_res_key; void* pr_aptpl_target_lun; void* pr_res_mapped_lun; int /*<<< orphan*/ * pr_reg_deve; int /*<<< orphan*/ * pr_reg_nacl; int /*<<< orphan*/  pr_res_holders; int /*<<< orphan*/  pr_reg_atp_mem_list; int /*<<< orphan*/  pr_reg_atp_list; int /*<<< orphan*/  pr_reg_abort_list; int /*<<< orphan*/  pr_reg_list; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PR_APTPL_MAX_IPORT_LEN ; 
 int /*<<< orphan*/  PR_APTPL_MAX_TPORT_LEN ; 
 int /*<<< orphan*/  PR_REG_ISID_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 struct t10_pr_registration* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned char*) ; 
 int /*<<< orphan*/  t10_pr_reg_cache ; 

int FUNC8(
	struct t10_reservation *pr_tmpl,
	u64 sa_res_key,
	unsigned char *i_port,
	unsigned char *isid,
	u64 mapped_lun,
	unsigned char *t_port,
	u16 tpgt,
	u64 target_lun,
	int res_holder,
	int all_tg_pt,
	u8 type)
{
	struct t10_pr_registration *pr_reg;

	if (!i_port || !t_port || !sa_res_key) {
		FUNC6("Illegal parameters for APTPL registration\n");
		return -EINVAL;
	}

	pr_reg = FUNC3(t10_pr_reg_cache, GFP_KERNEL);
	if (!pr_reg) {
		FUNC6("Unable to allocate struct t10_pr_registration\n");
		return -ENOMEM;
	}

	FUNC0(&pr_reg->pr_reg_list);
	FUNC0(&pr_reg->pr_reg_abort_list);
	FUNC0(&pr_reg->pr_reg_aptpl_list);
	FUNC0(&pr_reg->pr_reg_atp_list);
	FUNC0(&pr_reg->pr_reg_atp_mem_list);
	FUNC1(&pr_reg->pr_res_holders, 0);
	pr_reg->pr_reg_nacl = NULL;
	pr_reg->pr_reg_deve = NULL;
	pr_reg->pr_res_mapped_lun = mapped_lun;
	pr_reg->pr_aptpl_target_lun = target_lun;
	pr_reg->pr_res_key = sa_res_key;
	pr_reg->pr_reg_all_tg_pt = all_tg_pt;
	pr_reg->pr_reg_aptpl = 1;
	pr_reg->pr_res_scope = 0; /* Always LUN_SCOPE */
	pr_reg->pr_res_type = type;
	/*
	 * If an ISID value had been saved in APTPL metadata for this
	 * SCSI Initiator Port, restore it now.
	 */
	if (isid != NULL) {
		pr_reg->pr_reg_bin_isid = FUNC2(isid);
		FUNC7(pr_reg->pr_reg_isid, PR_REG_ISID_LEN, "%s", isid);
		pr_reg->isid_present_at_reg = 1;
	}
	/*
	 * Copy the i_port and t_port information from caller.
	 */
	FUNC7(pr_reg->pr_iport, PR_APTPL_MAX_IPORT_LEN, "%s", i_port);
	FUNC7(pr_reg->pr_tport, PR_APTPL_MAX_TPORT_LEN, "%s", t_port);
	pr_reg->pr_reg_tpgt = tpgt;
	/*
	 * Set pr_res_holder from caller, the pr_reg who is the reservation
	 * holder will get it's pointer set in core_scsi3_aptpl_reserve() once
	 * the Initiator Node LUN ACL from the fabric module is created for
	 * this registration.
	 */
	pr_reg->pr_res_holder = res_holder;

	FUNC4(&pr_reg->pr_reg_aptpl_list, &pr_tmpl->aptpl_reg_list);
	FUNC5("SPC-3 PR APTPL Successfully added registration%s from"
			" metadata\n", (res_holder) ? "+reservation" : "");
	return 0;
}