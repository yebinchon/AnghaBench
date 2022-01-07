
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qbman_swp {int dummy; } ;
struct qbman_fq_query_np_rslt {int verb; int rslt; } ;
struct qbman_fq_query_desc {int fqid; } ;


 int EBUSY ;
 int EIO ;
 int QBMAN_FQ_QUERY_NP ;
 int QBMAN_MC_RSLT_OK ;
 int QBMAN_RESPONSE_VERB_MASK ;
 int WARN_ON (int) ;
 int cpu_to_le32 (int) ;
 int pr_err (char*,int,...) ;
 void* qbman_swp_mc_complete (struct qbman_swp*,struct qbman_fq_query_desc*,int) ;
 scalar_t__ qbman_swp_mc_start (struct qbman_swp*) ;

int qbman_fq_query_state(struct qbman_swp *s, u32 fqid,
    struct qbman_fq_query_np_rslt *r)
{
 struct qbman_fq_query_desc *p;
 void *resp;

 p = (struct qbman_fq_query_desc *)qbman_swp_mc_start(s);
 if (!p)
  return -EBUSY;


 p->fqid = cpu_to_le32(fqid & 0x00FFFFFF);
 resp = qbman_swp_mc_complete(s, p, QBMAN_FQ_QUERY_NP);
 if (!resp) {
  pr_err("qbman: Query FQID %d NP fields failed, no response\n",
         fqid);
  return -EIO;
 }
 *r = *(struct qbman_fq_query_np_rslt *)resp;

 WARN_ON((r->verb & QBMAN_RESPONSE_VERB_MASK) != QBMAN_FQ_QUERY_NP);


 if (r->rslt != QBMAN_MC_RSLT_OK) {
  pr_err("Query NP fields of FQID 0x%x failed, code=0x%02x\n",
         p->fqid, r->rslt);
  return -EIO;
 }

 return 0;
}
