
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u8 ;
typedef void* u64 ;
typedef void* u32 ;
typedef int u16 ;
struct vnic_wq_copy {int dummy; } ;
struct TYPE_9__ {void* e_d_tov; void* r_a_tov; int mss; int d_id; scalar_t__ _resvd2; int lun; void* data_len; int scsi_cdb; void* flags; scalar_t__ _resvd1; void* pri_ta; void* crn; void* sense_addr; void* sgl_addr; void* sense_len; void* sgl_cnt; scalar_t__* _resvd0; void* special_req_flags; void* lunmap_id; } ;
struct TYPE_10__ {TYPE_4__ icmnd_16; } ;
struct TYPE_6__ {void* req_id; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
struct TYPE_8__ {TYPE_2__ tag; scalar_t__ _resvd; scalar_t__ status; int type; } ;
struct fcpio_host_req {TYPE_5__ u; TYPE_3__ hdr; } ;


 int CDB_16 ;
 int FCPIO_ICMND_16 ;
 void* LUN_ADDRESS ;
 int hton24 (int ,void*) ;
 int memcpy (int ,void**,void*) ;
 int memset (int ,int ,int ) ;
 struct fcpio_host_req* vnic_wq_copy_next_desc (struct vnic_wq_copy*) ;
 int vnic_wq_copy_post (struct vnic_wq_copy*) ;

__attribute__((used)) static inline void fnic_queue_wq_copy_desc_icmnd_16(struct vnic_wq_copy *wq,
          u32 req_id,
          u32 lunmap_id, u8 spl_flags,
          u32 sgl_cnt, u32 sense_len,
          u64 sgl_addr, u64 sns_addr,
          u8 crn, u8 pri_ta,
          u8 flags, u8 *scsi_cdb,
          u8 cdb_len,
          u32 data_len, u8 *lun,
          u32 d_id, u16 mss,
          u32 ratov, u32 edtov)
{
 struct fcpio_host_req *desc = vnic_wq_copy_next_desc(wq);

 desc->hdr.type = FCPIO_ICMND_16;
 desc->hdr.status = 0;
 desc->hdr._resvd = 0;
 desc->hdr.tag.u.req_id = req_id;

 desc->u.icmnd_16.lunmap_id = lunmap_id;
 desc->u.icmnd_16.special_req_flags = spl_flags;
 desc->u.icmnd_16._resvd0[0] = 0;
 desc->u.icmnd_16._resvd0[1] = 0;
 desc->u.icmnd_16._resvd0[2] = 0;
 desc->u.icmnd_16.sgl_cnt = sgl_cnt;
 desc->u.icmnd_16.sense_len = sense_len;
 desc->u.icmnd_16.sgl_addr = sgl_addr;
 desc->u.icmnd_16.sense_addr = sns_addr;
 desc->u.icmnd_16.crn = crn;
 desc->u.icmnd_16.pri_ta = pri_ta;
 desc->u.icmnd_16._resvd1 = 0;
 desc->u.icmnd_16.flags = flags;
 memset(desc->u.icmnd_16.scsi_cdb, 0, CDB_16);
 memcpy(desc->u.icmnd_16.scsi_cdb, scsi_cdb, cdb_len);
 desc->u.icmnd_16.data_len = data_len;
 memcpy(desc->u.icmnd_16.lun, lun, LUN_ADDRESS);
 desc->u.icmnd_16._resvd2 = 0;
 hton24(desc->u.icmnd_16.d_id, d_id);
 desc->u.icmnd_16.mss = mss;
 desc->u.icmnd_16.r_a_tov = ratov;
 desc->u.icmnd_16.e_d_tov = edtov;

 vnic_wq_copy_post(wq);
}
