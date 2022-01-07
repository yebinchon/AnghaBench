
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
struct TYPE_3__ {void* sense_addr; void* sense_len; void* sg_addr; void* data_len; int * cdb; int cdb_len; int lun_id; void* tgt_id; int flags; } ;
struct TYPE_4__ {TYPE_1__ icmnd; } ;
struct snic_host_req {TYPE_2__ u; int hdr; } ;
typedef int dma_addr_t ;


 int LUN_ADDR_LEN ;
 int SNIC_CDB_LEN ;
 int SNIC_REQ_ICMND ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int memcpy (int *,int *,int ) ;
 int memset (int *,int ,int ) ;
 int snic_io_hdr_enc (int *,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline void
snic_icmnd_init(struct snic_host_req *req, u32 cmnd_id, u32 host_id, u64 ctx,
  u16 flags, u64 tgt_id, u8 *lun, u8 *scsi_cdb, u8 cdb_len,
  u32 data_len, u16 sg_cnt, ulong sgl_addr,
  dma_addr_t sns_addr_pa, u32 sense_len)
{
 snic_io_hdr_enc(&req->hdr, SNIC_REQ_ICMND, 0, cmnd_id, host_id, sg_cnt,
   ctx);

 req->u.icmnd.flags = cpu_to_le16(flags);
 req->u.icmnd.tgt_id = cpu_to_le64(tgt_id);
 memcpy(&req->u.icmnd.lun_id, lun, LUN_ADDR_LEN);
 req->u.icmnd.cdb_len = cdb_len;
 memset(req->u.icmnd.cdb, 0, SNIC_CDB_LEN);
 memcpy(req->u.icmnd.cdb, scsi_cdb, cdb_len);
 req->u.icmnd.data_len = cpu_to_le32(data_len);
 req->u.icmnd.sg_addr = cpu_to_le64(sgl_addr);
 req->u.icmnd.sense_len = cpu_to_le32(sense_len);
 req->u.icmnd.sense_addr = cpu_to_le64(sns_addr_pa);
}
