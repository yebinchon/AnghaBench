
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_nvm_id20 {int lbaf; int tcrsm; int tcrst; int twrm; int twrt; int trdm; int trdt; int maxocpu; int maxoc; int mw_cunits; int ws_opt; int ws_min; int clba; int num_chk; int num_pu; int num_grp; int mnr; int mjr; } ;
struct nvm_geo {int num_ch; int num_lun; int all_luns; int num_chk; int clba; int all_chunks; int total_secs; int addrf; void* tbem; void* tbet; void* tprm; void* tprt; void* trdm; void* trdt; void* maxocpu; void* maxoc; void* mw_cunits; void* ws_opt; void* ws_min; int version; int minor_ver_id; int major_ver_id; } ;


 int NVM_OCSSD_SPEC_20 ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int nvme_nvm_set_addr_20 (int *,int *) ;

__attribute__((used)) static int nvme_nvm_setup_20(struct nvme_nvm_id20 *id,
        struct nvm_geo *geo)
{
 geo->major_ver_id = id->mjr;
 geo->minor_ver_id = id->mnr;


 geo->version = NVM_OCSSD_SPEC_20;

 geo->num_ch = le16_to_cpu(id->num_grp);
 geo->num_lun = le16_to_cpu(id->num_pu);
 geo->all_luns = geo->num_ch * geo->num_lun;

 geo->num_chk = le32_to_cpu(id->num_chk);
 geo->clba = le32_to_cpu(id->clba);

 geo->all_chunks = geo->all_luns * geo->num_chk;
 geo->total_secs = geo->clba * geo->all_chunks;

 geo->ws_min = le32_to_cpu(id->ws_min);
 geo->ws_opt = le32_to_cpu(id->ws_opt);
 geo->mw_cunits = le32_to_cpu(id->mw_cunits);
 geo->maxoc = le32_to_cpu(id->maxoc);
 geo->maxocpu = le32_to_cpu(id->maxocpu);

 geo->trdt = le32_to_cpu(id->trdt);
 geo->trdm = le32_to_cpu(id->trdm);
 geo->tprt = le32_to_cpu(id->twrt);
 geo->tprm = le32_to_cpu(id->twrm);
 geo->tbet = le32_to_cpu(id->tcrst);
 geo->tbem = le32_to_cpu(id->tcrsm);

 nvme_nvm_set_addr_20(&geo->addrf, &id->lbaf);

 return 0;
}
