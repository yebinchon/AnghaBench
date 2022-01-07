
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq {int dummy; } ;
struct fc_frame_header {scalar_t__ fh_type; } ;
struct fc_frame {int dummy; } ;
struct fc_fcp_pkt {int recov_retry; } ;




 int FC_ERROR ;
 scalar_t__ FC_TYPE_BLS ;
 scalar_t__ IS_ERR (struct fc_frame*) ;
 int fc_exch_done (struct fc_seq*) ;
 scalar_t__ fc_fcp_lock_pkt (struct fc_fcp_pkt*) ;
 int fc_fcp_recovery (struct fc_fcp_pkt*,int ) ;
 int fc_fcp_srr_error (struct fc_fcp_pkt*,struct fc_frame*) ;
 int fc_fcp_timer_set (struct fc_fcp_pkt*,int ) ;
 int fc_fcp_unlock_pkt (struct fc_fcp_pkt*) ;
 int fc_frame_free (struct fc_frame*) ;
 struct fc_frame_header* fc_frame_header_get (struct fc_frame*) ;
 int fc_frame_payload_op (struct fc_frame*) ;
 int get_fsp_rec_tov (struct fc_fcp_pkt*) ;

__attribute__((used)) static void fc_fcp_srr_resp(struct fc_seq *seq, struct fc_frame *fp, void *arg)
{
 struct fc_fcp_pkt *fsp = arg;
 struct fc_frame_header *fh;

 if (IS_ERR(fp)) {
  fc_fcp_srr_error(fsp, fp);
  return;
 }

 if (fc_fcp_lock_pkt(fsp))
  goto out;

 fh = fc_frame_header_get(fp);







 if (fh->fh_type == FC_TYPE_BLS) {
  fc_fcp_unlock_pkt(fsp);
  return;
 }

 switch (fc_frame_payload_op(fp)) {
 case 129:
  fsp->recov_retry = 0;
  fc_fcp_timer_set(fsp, get_fsp_rec_tov(fsp));
  break;
 case 128:
 default:
  fc_fcp_recovery(fsp, FC_ERROR);
  break;
 }
 fc_fcp_unlock_pkt(fsp);
out:
 fc_exch_done(seq);
 fc_frame_free(fp);
}
