
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
struct vnic_wq_copy {int dummy; } ;
struct TYPE_9__ {void* e_d_tov; void* r_a_tov; int d_id; scalar_t__ _resvd1; int lun; scalar_t__ _resvd; void* t_tag; void* tm_req; void* lunmap_id; } ;
struct TYPE_10__ {TYPE_4__ itmf; } ;
struct TYPE_6__ {void* req_id; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
struct TYPE_8__ {TYPE_2__ tag; scalar_t__ _resvd; scalar_t__ status; int type; } ;
struct fcpio_host_req {TYPE_5__ u; TYPE_3__ hdr; } ;


 int FCPIO_ITMF ;
 int LUN_ADDRESS ;
 int hton24 (int ,void*) ;
 int memcpy (int ,int *,int ) ;
 struct fcpio_host_req* vnic_wq_copy_next_desc (struct vnic_wq_copy*) ;
 int vnic_wq_copy_post (struct vnic_wq_copy*) ;

__attribute__((used)) static inline void fnic_queue_wq_copy_desc_itmf(struct vnic_wq_copy *wq,
      u32 req_id, u32 lunmap_id,
      u32 tm_req, u32 tm_id, u8 *lun,
      u32 d_id, u32 r_a_tov,
      u32 e_d_tov)
{
 struct fcpio_host_req *desc = vnic_wq_copy_next_desc(wq);

 desc->hdr.type = FCPIO_ITMF;
 desc->hdr.status = 0;
 desc->hdr._resvd = 0;
 desc->hdr.tag.u.req_id = req_id;

 desc->u.itmf.lunmap_id = lunmap_id;
 desc->u.itmf.tm_req = tm_req;
 desc->u.itmf.t_tag = tm_id;
 desc->u.itmf._resvd = 0;
 memcpy(desc->u.itmf.lun, lun, LUN_ADDRESS);
 desc->u.itmf._resvd1 = 0;
 hton24(desc->u.itmf.d_id, d_id);
 desc->u.itmf.r_a_tov = r_a_tov;
 desc->u.itmf.e_d_tov = e_d_tov;

 vnic_wq_copy_post(wq);
}
