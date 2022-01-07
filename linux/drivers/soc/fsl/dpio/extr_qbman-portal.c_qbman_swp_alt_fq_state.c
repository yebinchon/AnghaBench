
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qbman_swp {int dummy; } ;
struct qbman_alt_fq_state_rslt {int verb; scalar_t__ rslt; } ;
struct qbman_alt_fq_state_desc {int fqid; } ;


 int ALT_FQ_FQID_MASK ;
 int EBUSY ;
 int EIO ;
 scalar_t__ QBMAN_MC_RSLT_OK ;
 int QBMAN_RESULT_MASK ;
 int WARN_ON (int) ;
 int cpu_to_le32 (int) ;
 int pr_err (char*,int,...) ;
 struct qbman_alt_fq_state_rslt* qbman_swp_mc_complete (struct qbman_swp*,struct qbman_alt_fq_state_desc*,int) ;
 struct qbman_alt_fq_state_desc* qbman_swp_mc_start (struct qbman_swp*) ;
 scalar_t__ unlikely (int) ;

int qbman_swp_alt_fq_state(struct qbman_swp *s, u32 fqid,
      u8 alt_fq_verb)
{
 struct qbman_alt_fq_state_desc *p;
 struct qbman_alt_fq_state_rslt *r;


 p = qbman_swp_mc_start(s);
 if (!p)
  return -EBUSY;

 p->fqid = cpu_to_le32(fqid & ALT_FQ_FQID_MASK);


 r = qbman_swp_mc_complete(s, p, alt_fq_verb);
 if (unlikely(!r)) {
  pr_err("qbman: mgmt cmd failed, no response (verb=0x%x)\n",
         alt_fq_verb);
  return -EIO;
 }


 WARN_ON((r->verb & QBMAN_RESULT_MASK) != alt_fq_verb);


 if (unlikely(r->rslt != QBMAN_MC_RSLT_OK)) {
  pr_err("qbman: ALT FQID %d failed: verb = 0x%08x code = 0x%02x\n",
         fqid, r->verb, r->rslt);
  return -EIO;
 }

 return 0;
}
