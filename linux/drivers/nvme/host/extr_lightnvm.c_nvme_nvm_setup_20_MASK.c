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
struct nvme_nvm_id20 {int /*<<< orphan*/  lbaf; int /*<<< orphan*/  tcrsm; int /*<<< orphan*/  tcrst; int /*<<< orphan*/  twrm; int /*<<< orphan*/  twrt; int /*<<< orphan*/  trdm; int /*<<< orphan*/  trdt; int /*<<< orphan*/  maxocpu; int /*<<< orphan*/  maxoc; int /*<<< orphan*/  mw_cunits; int /*<<< orphan*/  ws_opt; int /*<<< orphan*/  ws_min; int /*<<< orphan*/  clba; int /*<<< orphan*/  num_chk; int /*<<< orphan*/  num_pu; int /*<<< orphan*/  num_grp; int /*<<< orphan*/  mnr; int /*<<< orphan*/  mjr; } ;
struct nvm_geo {int num_ch; int num_lun; int all_luns; int num_chk; int clba; int all_chunks; int total_secs; int /*<<< orphan*/  addrf; void* tbem; void* tbet; void* tprm; void* tprt; void* trdm; void* trdt; void* maxocpu; void* maxoc; void* mw_cunits; void* ws_opt; void* ws_min; int /*<<< orphan*/  version; int /*<<< orphan*/  minor_ver_id; int /*<<< orphan*/  major_ver_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVM_OCSSD_SPEC_20 ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct nvme_nvm_id20 *id,
			     struct nvm_geo *geo)
{
	geo->major_ver_id = id->mjr;
	geo->minor_ver_id = id->mnr;

	/* Set compacted version for upper layers */
	geo->version = NVM_OCSSD_SPEC_20;

	geo->num_ch = FUNC0(id->num_grp);
	geo->num_lun = FUNC0(id->num_pu);
	geo->all_luns = geo->num_ch * geo->num_lun;

	geo->num_chk = FUNC1(id->num_chk);
	geo->clba = FUNC1(id->clba);

	geo->all_chunks = geo->all_luns * geo->num_chk;
	geo->total_secs = geo->clba * geo->all_chunks;

	geo->ws_min = FUNC1(id->ws_min);
	geo->ws_opt = FUNC1(id->ws_opt);
	geo->mw_cunits = FUNC1(id->mw_cunits);
	geo->maxoc = FUNC1(id->maxoc);
	geo->maxocpu = FUNC1(id->maxocpu);

	geo->trdt = FUNC1(id->trdt);
	geo->trdm = FUNC1(id->trdm);
	geo->tprt = FUNC1(id->twrt);
	geo->tprm = FUNC1(id->twrm);
	geo->tbet = FUNC1(id->tcrst);
	geo->tbem = FUNC1(id->tcrsm);

	FUNC2(&geo->addrf, &id->lbaf);

	return 0;
}