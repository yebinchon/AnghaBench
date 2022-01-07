
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vscsiif_response {size_t rqid; } ;
struct vscsifrnt_info {TYPE_1__** shadow; int shadow_free_bitmap; } ;
struct TYPE_2__ {scalar_t__ act; } ;


 scalar_t__ VSCSIIF_ACT_SCSI_CDB ;
 size_t VSCSIIF_MAX_REQS ;
 scalar_t__ WARN (int,char*,size_t) ;
 int scsifront_cdb_cmd_done (struct vscsifrnt_info*,struct vscsiif_response*) ;
 int scsifront_sync_cmd_done (struct vscsifrnt_info*,struct vscsiif_response*) ;
 scalar_t__ test_bit (size_t,int ) ;

__attribute__((used)) static void scsifront_do_response(struct vscsifrnt_info *info,
      struct vscsiif_response *ring_rsp)
{
 if (WARN(ring_rsp->rqid >= VSCSIIF_MAX_REQS ||
   test_bit(ring_rsp->rqid, info->shadow_free_bitmap),
   "illegal rqid %u returned by backend!\n", ring_rsp->rqid))
  return;

 if (info->shadow[ring_rsp->rqid]->act == VSCSIIF_ACT_SCSI_CDB)
  scsifront_cdb_cmd_done(info, ring_rsp);
 else
  scsifront_sync_cmd_done(info, ring_rsp);
}
