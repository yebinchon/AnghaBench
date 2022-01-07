
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int lun_id; int tgt_id; int req_id; int flags; int tm_type; } ;
struct TYPE_4__ {TYPE_1__ itmf; } ;
struct snic_host_req {TYPE_2__ u; int hdr; } ;


 int LUN_ADDR_LEN ;
 int SNIC_REQ_ITMF ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;
 int memcpy (int *,int *,int ) ;
 int snic_io_hdr_enc (int *,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline void
snic_itmf_init(struct snic_host_req *req, u32 cmnd_id, u32 host_id, ulong ctx,
        u16 flags, u32 req_id, u64 tgt_id, u8 *lun, u8 tm_type)
{
 snic_io_hdr_enc(&req->hdr, SNIC_REQ_ITMF, 0, cmnd_id, host_id, 0, ctx);

 req->u.itmf.tm_type = tm_type;
 req->u.itmf.flags = cpu_to_le16(flags);

 req->u.itmf.req_id = cpu_to_le32(req_id);
 req->u.itmf.tgt_id = cpu_to_le64(tgt_id);
 memcpy(&req->u.itmf.lun_id, lun, LUN_ADDR_LEN);
}
