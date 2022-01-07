
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qedf_ctx {int flogi_cnt; } ;
struct fc_seq {int dummy; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;


 struct fc_seq* fc_elsct_send (struct fc_lport*,int ,struct fc_frame*,unsigned int,void (*) (struct fc_seq*,struct fc_frame*,void*),void*,int ) ;
 void fc_lport_flogi_resp (struct fc_seq*,struct fc_frame*,void*) ;
 struct qedf_ctx* lport_priv (struct fc_lport*) ;
 void qedf_flogi_resp (struct fc_seq*,struct fc_frame*,void*) ;

__attribute__((used)) static struct fc_seq *qedf_elsct_send(struct fc_lport *lport, u32 did,
 struct fc_frame *fp, unsigned int op,
 void (*resp)(struct fc_seq *,
 struct fc_frame *,
 void *),
 void *arg, u32 timeout)
{
 struct qedf_ctx *qedf = lport_priv(lport);





 if (resp == fc_lport_flogi_resp) {
  qedf->flogi_cnt++;
  return fc_elsct_send(lport, did, fp, op, qedf_flogi_resp,
      arg, timeout);
 }

 return fc_elsct_send(lport, did, fp, op, resp, arg, timeout);
}
