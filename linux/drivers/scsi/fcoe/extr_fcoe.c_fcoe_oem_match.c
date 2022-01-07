
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fcp_cmnd {int fc_flags; int fc_dl; } ;
struct fc_frame_header {scalar_t__ fh_r_ctl; int fh_rx_id; } ;
struct fc_frame {int dummy; } ;
struct TYPE_3__ {scalar_t__ data_len; } ;


 int FCP_CFL_WRDATA ;
 scalar_t__ FC_RCTL_DD_UNSOL_CMD ;
 scalar_t__ FC_XID_UNKNOWN ;
 scalar_t__ fc_fcp_is_read (TYPE_1__*) ;
 struct fc_frame_header* fc_frame_header_get (struct fc_frame*) ;
 struct fcp_cmnd* fc_frame_payload_get (struct fc_frame*,int) ;
 scalar_t__ fcoe_ddp_min ;
 TYPE_1__* fr_fsp (struct fc_frame*) ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static bool fcoe_oem_match(struct fc_frame *fp)
{
 struct fc_frame_header *fh = fc_frame_header_get(fp);
 struct fcp_cmnd *fcp;

 if (fc_fcp_is_read(fr_fsp(fp)) &&
     (fr_fsp(fp)->data_len > fcoe_ddp_min))
  return 1;
 else if ((fr_fsp(fp) == ((void*)0)) &&
   (fh->fh_r_ctl == FC_RCTL_DD_UNSOL_CMD) &&
   (ntohs(fh->fh_rx_id) == FC_XID_UNKNOWN)) {
  fcp = fc_frame_payload_get(fp, sizeof(*fcp));
  if ((fcp->fc_flags & FCP_CFL_WRDATA) &&
      (ntohl(fcp->fc_dl) > fcoe_ddp_min))
   return 1;
 }
 return 0;
}
