
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscsiif_response {unsigned int rqid; int rslt; scalar_t__ residual_len; scalar_t__ sense_len; } ;
struct vscsifrnt_info {int shadow_free_bitmap; } ;


 int DID_RESET ;
 unsigned int VSCSIIF_MAX_REQS ;
 int scsifront_do_response (struct vscsifrnt_info*,struct vscsiif_response*) ;
 int scsifront_ring_drain (struct vscsifrnt_info*) ;
 scalar_t__ test_bit (unsigned int,int ) ;

__attribute__((used)) static void scsifront_finish_all(struct vscsifrnt_info *info)
{
 unsigned i;
 struct vscsiif_response resp;

 scsifront_ring_drain(info);

 for (i = 0; i < VSCSIIF_MAX_REQS; i++) {
  if (test_bit(i, info->shadow_free_bitmap))
   continue;
  resp.rqid = i;
  resp.sense_len = 0;
  resp.rslt = DID_RESET << 16;
  resp.residual_len = 0;
  scsifront_do_response(info, &resp);
 }
}
