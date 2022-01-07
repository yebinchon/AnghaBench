
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_nvm_id12_grp {scalar_t__ mtype; int num_ch; int num_lun; int num_pln; int fpg_sz; int num_pg; int mpos; int cpar; int fmtype; int tbem; int tbet; int tprm; int tprt; int trdm; int trdt; int mccap; int sos; int csecs; int num_chk; } ;
struct nvme_nvm_id12 {int cgrps; int ppaf; int dom; int cap; int vmnt; int ver_id; struct nvme_nvm_id12_grp grp; } ;
struct nvm_geo {int minor_ver_id; int num_ch; int num_lun; int all_luns; int num_chk; int csecs; int sos; int clba; int all_chunks; int total_secs; int ws_min; int ws_opt; int mw_cunits; int maxoc; int maxocpu; scalar_t__ mtype; int cpar; int mpos; int num_pln; int num_pg; int fpg_sz; int addrf; int pln_mode; int fmtype; void* dom; void* cap; int vmnt; void* tbem; void* tbet; void* tprm; void* tprt; void* trdm; void* trdt; void* mccap; int version; int major_ver_id; } ;
struct nvm_addrf_12 {int dummy; } ;


 int EINVAL ;
 int NVM_OCSSD_SPEC_12 ;
 int NVM_PLANE_DOUBLE ;
 int NVM_PLANE_QUAD ;
 int NVM_PLANE_SINGLE ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int nvme_nvm_set_addr_12 (struct nvm_addrf_12*,int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int nvme_nvm_setup_12(struct nvme_nvm_id12 *id,
        struct nvm_geo *geo)
{
 struct nvme_nvm_id12_grp *src;
 int sec_per_pg, sec_per_pl, pg_per_blk;

 if (id->cgrps != 1)
  return -EINVAL;

 src = &id->grp;

 if (src->mtype != 0) {
  pr_err("nvm: memory type not supported\n");
  return -EINVAL;
 }


 geo->major_ver_id = id->ver_id;
 geo->minor_ver_id = 2;


 geo->version = NVM_OCSSD_SPEC_12;

 geo->num_ch = src->num_ch;
 geo->num_lun = src->num_lun;
 geo->all_luns = geo->num_ch * geo->num_lun;

 geo->num_chk = le16_to_cpu(src->num_chk);

 geo->csecs = le16_to_cpu(src->csecs);
 geo->sos = le16_to_cpu(src->sos);

 pg_per_blk = le16_to_cpu(src->num_pg);
 sec_per_pg = le16_to_cpu(src->fpg_sz) / geo->csecs;
 sec_per_pl = sec_per_pg * src->num_pln;
 geo->clba = sec_per_pl * pg_per_blk;

 geo->all_chunks = geo->all_luns * geo->num_chk;
 geo->total_secs = geo->clba * geo->all_chunks;

 geo->ws_min = sec_per_pg;
 geo->ws_opt = sec_per_pg;
 geo->mw_cunits = geo->ws_opt << 3;





 geo->maxoc = geo->all_luns * geo->num_chk;
 geo->maxocpu = geo->num_chk;

 geo->mccap = le32_to_cpu(src->mccap);

 geo->trdt = le32_to_cpu(src->trdt);
 geo->trdm = le32_to_cpu(src->trdm);
 geo->tprt = le32_to_cpu(src->tprt);
 geo->tprm = le32_to_cpu(src->tprm);
 geo->tbet = le32_to_cpu(src->tbet);
 geo->tbem = le32_to_cpu(src->tbem);


 geo->vmnt = id->vmnt;
 geo->cap = le32_to_cpu(id->cap);
 geo->dom = le32_to_cpu(id->dom);

 geo->mtype = src->mtype;
 geo->fmtype = src->fmtype;

 geo->cpar = le16_to_cpu(src->cpar);
 geo->mpos = le32_to_cpu(src->mpos);

 geo->pln_mode = NVM_PLANE_SINGLE;

 if (geo->mpos & 0x020202) {
  geo->pln_mode = NVM_PLANE_DOUBLE;
  geo->ws_opt <<= 1;
 } else if (geo->mpos & 0x040404) {
  geo->pln_mode = NVM_PLANE_QUAD;
  geo->ws_opt <<= 2;
 }

 geo->num_pln = src->num_pln;
 geo->num_pg = le16_to_cpu(src->num_pg);
 geo->fpg_sz = le16_to_cpu(src->fpg_sz);

 nvme_nvm_set_addr_12((struct nvm_addrf_12 *)&geo->addrf, &id->ppaf);

 return 0;
}
