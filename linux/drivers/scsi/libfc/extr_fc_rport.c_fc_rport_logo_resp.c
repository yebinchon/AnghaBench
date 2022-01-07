
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_seq {int dummy; } ;
struct fc_rport_priv {int kref; struct fc_lport* local_port; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;
struct TYPE_2__ {int did; } ;


 int FC_RPORT_ID_DBG (struct fc_lport*,int ,char*,int ) ;
 int IS_ERR (struct fc_frame*) ;
 int fc_els_resp_type (struct fc_frame*) ;
 int fc_frame_free (struct fc_frame*) ;
 int fc_rport_destroy ;
 TYPE_1__* fc_seq_exch (struct fc_seq*) ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void fc_rport_logo_resp(struct fc_seq *sp, struct fc_frame *fp,
          void *rdata_arg)
{
 struct fc_rport_priv *rdata = rdata_arg;
 struct fc_lport *lport = rdata->local_port;

 FC_RPORT_ID_DBG(lport, fc_seq_exch(sp)->did,
   "Received a LOGO %s\n", fc_els_resp_type(fp));
 if (!IS_ERR(fp))
  fc_frame_free(fp);
 kref_put(&rdata->kref, fc_rport_destroy);
}
