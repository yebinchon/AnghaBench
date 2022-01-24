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
struct nvme_nvm_id12_grp {scalar_t__ mtype; int num_ch; int num_lun; int num_pln; int /*<<< orphan*/  fpg_sz; int /*<<< orphan*/  num_pg; int /*<<< orphan*/  mpos; int /*<<< orphan*/  cpar; int /*<<< orphan*/  fmtype; int /*<<< orphan*/  tbem; int /*<<< orphan*/  tbet; int /*<<< orphan*/  tprm; int /*<<< orphan*/  tprt; int /*<<< orphan*/  trdm; int /*<<< orphan*/  trdt; int /*<<< orphan*/  mccap; int /*<<< orphan*/  sos; int /*<<< orphan*/  csecs; int /*<<< orphan*/  num_chk; } ;
struct nvme_nvm_id12 {int cgrps; int /*<<< orphan*/  ppaf; int /*<<< orphan*/  dom; int /*<<< orphan*/  cap; int /*<<< orphan*/  vmnt; int /*<<< orphan*/  ver_id; struct nvme_nvm_id12_grp grp; } ;
struct nvm_geo {int minor_ver_id; int num_ch; int num_lun; int all_luns; int num_chk; int csecs; int sos; int clba; int all_chunks; int total_secs; int ws_min; int ws_opt; int mw_cunits; int maxoc; int maxocpu; scalar_t__ mtype; int cpar; int mpos; int num_pln; int num_pg; int fpg_sz; int /*<<< orphan*/  addrf; int /*<<< orphan*/  pln_mode; int /*<<< orphan*/  fmtype; void* dom; void* cap; int /*<<< orphan*/  vmnt; void* tbem; void* tbet; void* tprm; void* tprt; void* trdm; void* trdt; void* mccap; int /*<<< orphan*/  version; int /*<<< orphan*/  major_ver_id; } ;
struct nvm_addrf_12 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NVM_OCSSD_SPEC_12 ; 
 int /*<<< orphan*/  NVM_PLANE_DOUBLE ; 
 int /*<<< orphan*/  NVM_PLANE_QUAD ; 
 int /*<<< orphan*/  NVM_PLANE_SINGLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvm_addrf_12*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct nvme_nvm_id12 *id,
			     struct nvm_geo *geo)
{
	struct nvme_nvm_id12_grp *src;
	int sec_per_pg, sec_per_pl, pg_per_blk;

	if (id->cgrps != 1)
		return -EINVAL;

	src = &id->grp;

	if (src->mtype != 0) {
		FUNC3("nvm: memory type not supported\n");
		return -EINVAL;
	}

	/* 1.2 spec. only reports a single version id - unfold */
	geo->major_ver_id = id->ver_id;
	geo->minor_ver_id = 2;

	/* Set compacted version for upper layers */
	geo->version = NVM_OCSSD_SPEC_12;

	geo->num_ch = src->num_ch;
	geo->num_lun = src->num_lun;
	geo->all_luns = geo->num_ch * geo->num_lun;

	geo->num_chk = FUNC0(src->num_chk);

	geo->csecs = FUNC0(src->csecs);
	geo->sos = FUNC0(src->sos);

	pg_per_blk = FUNC0(src->num_pg);
	sec_per_pg = FUNC0(src->fpg_sz) / geo->csecs;
	sec_per_pl = sec_per_pg * src->num_pln;
	geo->clba = sec_per_pl * pg_per_blk;

	geo->all_chunks = geo->all_luns * geo->num_chk;
	geo->total_secs = geo->clba * geo->all_chunks;

	geo->ws_min = sec_per_pg;
	geo->ws_opt = sec_per_pg;
	geo->mw_cunits = geo->ws_opt << 3;	/* default to MLC safe values */

	/* Do not impose values for maximum number of open blocks as it is
	 * unspecified in 1.2. Users of 1.2 must be aware of this and eventually
	 * specify these values through a quirk if restrictions apply.
	 */
	geo->maxoc = geo->all_luns * geo->num_chk;
	geo->maxocpu = geo->num_chk;

	geo->mccap = FUNC1(src->mccap);

	geo->trdt = FUNC1(src->trdt);
	geo->trdm = FUNC1(src->trdm);
	geo->tprt = FUNC1(src->tprt);
	geo->tprm = FUNC1(src->tprm);
	geo->tbet = FUNC1(src->tbet);
	geo->tbem = FUNC1(src->tbem);

	/* 1.2 compatibility */
	geo->vmnt = id->vmnt;
	geo->cap = FUNC1(id->cap);
	geo->dom = FUNC1(id->dom);

	geo->mtype = src->mtype;
	geo->fmtype = src->fmtype;

	geo->cpar = FUNC0(src->cpar);
	geo->mpos = FUNC1(src->mpos);

	geo->pln_mode = NVM_PLANE_SINGLE;

	if (geo->mpos & 0x020202) {
		geo->pln_mode = NVM_PLANE_DOUBLE;
		geo->ws_opt <<= 1;
	} else if (geo->mpos & 0x040404) {
		geo->pln_mode = NVM_PLANE_QUAD;
		geo->ws_opt <<= 2;
	}

	geo->num_pln = src->num_pln;
	geo->num_pg = FUNC0(src->num_pg);
	geo->fpg_sz = FUNC0(src->fpg_sz);

	FUNC2((struct nvm_addrf_12 *)&geo->addrf, &id->ppaf);

	return 0;
}