
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq {int dummy; } ;
struct fc_frame {int dummy; } ;
struct fc_exch {int seq; } ;




 int FC_EXCH_DBG (struct fc_exch*,char*,...) ;
 int FC_EX_CLOSED ;
 int FC_EX_TIMEOUT ;
 scalar_t__ IS_ERR (struct fc_frame*) ;
 int PTR_ERR (struct fc_frame*) ;
 int fc_exch_done (int *) ;
 int fc_exch_release (struct fc_exch*) ;
 int fc_frame_free (struct fc_frame*) ;
 unsigned int fc_frame_payload_op (struct fc_frame*) ;

__attribute__((used)) static void fc_exch_rrq_resp(struct fc_seq *sp, struct fc_frame *fp, void *arg)
{
 struct fc_exch *aborted_ep = arg;
 unsigned int op;

 if (IS_ERR(fp)) {
  int err = PTR_ERR(fp);

  if (err == -FC_EX_CLOSED || err == -FC_EX_TIMEOUT)
   goto cleanup;
  FC_EXCH_DBG(aborted_ep, "Cannot process RRQ, "
       "frame error %d\n", err);
  return;
 }

 op = fc_frame_payload_op(fp);
 fc_frame_free(fp);

 switch (op) {
 case 128:
  FC_EXCH_DBG(aborted_ep, "LS_RJT for RRQ\n");

 case 129:
  goto cleanup;
 default:
  FC_EXCH_DBG(aborted_ep, "unexpected response op %x for RRQ\n",
       op);
  return;
 }

cleanup:
 fc_exch_done(&aborted_ep->seq);

 fc_exch_release(aborted_ep);
}
