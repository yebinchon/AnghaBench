
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qbman_swp {int dummy; } ;
struct qbman_bp_query_rslt {int verb; scalar_t__ rslt; } ;
struct qbman_bp_query_desc {int bpid; } ;


 int EBUSY ;
 int EIO ;
 int QBMAN_BP_QUERY ;
 scalar_t__ QBMAN_MC_RSLT_OK ;
 int QBMAN_RESPONSE_VERB_MASK ;
 int WARN_ON (int) ;
 int cpu_to_le16 (int ) ;
 int pr_err (char*,int ,...) ;
 void* qbman_swp_mc_complete (struct qbman_swp*,struct qbman_bp_query_desc*,int) ;
 scalar_t__ qbman_swp_mc_start (struct qbman_swp*) ;

int qbman_bp_query(struct qbman_swp *s, u16 bpid,
     struct qbman_bp_query_rslt *r)
{
 struct qbman_bp_query_desc *p;
 void *resp;

 p = (struct qbman_bp_query_desc *)qbman_swp_mc_start(s);
 if (!p)
  return -EBUSY;

 p->bpid = cpu_to_le16(bpid);
 resp = qbman_swp_mc_complete(s, p, QBMAN_BP_QUERY);
 if (!resp) {
  pr_err("qbman: Query BPID %d fields failed, no response\n",
         bpid);
  return -EIO;
 }
 *r = *(struct qbman_bp_query_rslt *)resp;

 WARN_ON((r->verb & QBMAN_RESPONSE_VERB_MASK) != QBMAN_BP_QUERY);


 if (r->rslt != QBMAN_MC_RSLT_OK) {
  pr_err("Query fields of BPID 0x%x failed, code=0x%02x\n",
         bpid, r->rslt);
  return -EIO;
 }

 return 0;
}
