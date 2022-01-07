
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u64 ;
typedef int u16 ;
struct t10_reservation {int aptpl_reg_list; } ;
struct t10_pr_registration {int pr_reg_all_tg_pt; int pr_reg_aptpl; int isid_present_at_reg; int pr_res_holder; int pr_reg_aptpl_list; int pr_reg_tpgt; int pr_tport; int pr_iport; int pr_reg_isid; int pr_reg_bin_isid; int pr_res_type; scalar_t__ pr_res_scope; void* pr_res_key; void* pr_aptpl_target_lun; void* pr_res_mapped_lun; int * pr_reg_deve; int * pr_reg_nacl; int pr_res_holders; int pr_reg_atp_mem_list; int pr_reg_atp_list; int pr_reg_abort_list; int pr_reg_list; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PR_APTPL_MAX_IPORT_LEN ;
 int PR_APTPL_MAX_TPORT_LEN ;
 int PR_REG_ISID_LEN ;
 int atomic_set (int *,int ) ;
 int get_unaligned_be64 (unsigned char*) ;
 struct t10_pr_registration* kmem_cache_zalloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int pr_debug (char*,char*) ;
 int pr_err (char*) ;
 int snprintf (int ,int ,char*,unsigned char*) ;
 int t10_pr_reg_cache ;

int core_scsi3_alloc_aptpl_registration(
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
  pr_err("Illegal parameters for APTPL registration\n");
  return -EINVAL;
 }

 pr_reg = kmem_cache_zalloc(t10_pr_reg_cache, GFP_KERNEL);
 if (!pr_reg) {
  pr_err("Unable to allocate struct t10_pr_registration\n");
  return -ENOMEM;
 }

 INIT_LIST_HEAD(&pr_reg->pr_reg_list);
 INIT_LIST_HEAD(&pr_reg->pr_reg_abort_list);
 INIT_LIST_HEAD(&pr_reg->pr_reg_aptpl_list);
 INIT_LIST_HEAD(&pr_reg->pr_reg_atp_list);
 INIT_LIST_HEAD(&pr_reg->pr_reg_atp_mem_list);
 atomic_set(&pr_reg->pr_res_holders, 0);
 pr_reg->pr_reg_nacl = ((void*)0);
 pr_reg->pr_reg_deve = ((void*)0);
 pr_reg->pr_res_mapped_lun = mapped_lun;
 pr_reg->pr_aptpl_target_lun = target_lun;
 pr_reg->pr_res_key = sa_res_key;
 pr_reg->pr_reg_all_tg_pt = all_tg_pt;
 pr_reg->pr_reg_aptpl = 1;
 pr_reg->pr_res_scope = 0;
 pr_reg->pr_res_type = type;




 if (isid != ((void*)0)) {
  pr_reg->pr_reg_bin_isid = get_unaligned_be64(isid);
  snprintf(pr_reg->pr_reg_isid, PR_REG_ISID_LEN, "%s", isid);
  pr_reg->isid_present_at_reg = 1;
 }



 snprintf(pr_reg->pr_iport, PR_APTPL_MAX_IPORT_LEN, "%s", i_port);
 snprintf(pr_reg->pr_tport, PR_APTPL_MAX_TPORT_LEN, "%s", t_port);
 pr_reg->pr_reg_tpgt = tpgt;






 pr_reg->pr_res_holder = res_holder;

 list_add_tail(&pr_reg->pr_reg_aptpl_list, &pr_tmpl->aptpl_reg_list);
 pr_debug("SPC-3 PR APTPL Successfully added registration%s from"
   " metadata\n", (res_holder) ? "+reservation" : "");
 return 0;
}
