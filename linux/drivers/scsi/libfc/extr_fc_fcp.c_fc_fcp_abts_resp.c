
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_frame_header {int fh_r_ctl; } ;
struct fc_frame {int dummy; } ;
struct fc_fcp_pkt {int dummy; } ;
struct fc_ba_rjt {int br_reason; } ;


 int FC_BA_RJT_LOG_ERR ;


 int fc_fcp_abort_done (struct fc_fcp_pkt*) ;
 struct fc_frame_header* fc_frame_header_get (struct fc_frame*) ;
 struct fc_ba_rjt* fc_frame_payload_get (struct fc_frame*,int) ;

__attribute__((used)) static void fc_fcp_abts_resp(struct fc_fcp_pkt *fsp, struct fc_frame *fp)
{
 int ba_done = 1;
 struct fc_ba_rjt *brp;
 struct fc_frame_header *fh;

 fh = fc_frame_header_get(fp);
 switch (fh->fh_r_ctl) {
 case 129:
  break;
 case 128:
  brp = fc_frame_payload_get(fp, sizeof(*brp));
  if (brp && brp->br_reason == FC_BA_RJT_LOG_ERR)
   break;

 default:





  ba_done = 0;
 }

 if (ba_done)
  fc_fcp_abort_done(fsp);
}
