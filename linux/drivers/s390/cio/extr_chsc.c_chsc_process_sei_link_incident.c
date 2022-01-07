
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int class; scalar_t__ null; } ;
struct lir {int ic; TYPE_1__ iq; int attached_node; int incident_node; } ;
struct chsc_sei_nt0_area {int rsid; int rs; int * ccdf; } ;


 int CIO_CRW_EVENT (int,char*,int ,int ,int ) ;


 int NODEID_LEN ;
 int PARAMS_LEN ;
 int format_node_data (char*,char*,int *) ;
 int pr_err (char*,int ,int ,int ,char*,char*,char*,char*) ;
 int pr_warn (char*,int ,int ,int ,char*,char*,char*,char*) ;

__attribute__((used)) static void chsc_process_sei_link_incident(struct chsc_sei_nt0_area *sei_area)
{
 struct lir *lir = (struct lir *) &sei_area->ccdf;
 char iuparams[PARAMS_LEN], iunodeid[NODEID_LEN], auparams[PARAMS_LEN],
      aunodeid[NODEID_LEN];

 CIO_CRW_EVENT(4, "chsc: link incident (rs=%02x, rs_id=%04x, iq=%02x)\n",
        sei_area->rs, sei_area->rsid, sei_area->ccdf[0]);


 if (lir->iq.null)
  return;





 format_node_data(iuparams, iunodeid, &lir->incident_node);
 format_node_data(auparams, aunodeid, &lir->attached_node);

 switch (lir->iq.class) {
 case 129:
  pr_warn("Link degraded: RS=%02x RSID=%04x IC=%02x "
   "IUPARAMS=%s IUNODEID=%s AUPARAMS=%s AUNODEID=%s\n",
   sei_area->rs, sei_area->rsid, lir->ic, iuparams,
   iunodeid, auparams, aunodeid);
  break;
 case 128:
  pr_err("Link stopped: RS=%02x RSID=%04x IC=%02x "
         "IUPARAMS=%s IUNODEID=%s AUPARAMS=%s AUNODEID=%s\n",
         sei_area->rs, sei_area->rsid, lir->ic, iuparams,
         iunodeid, auparams, aunodeid);
  break;
 default:
  break;
 }
}
