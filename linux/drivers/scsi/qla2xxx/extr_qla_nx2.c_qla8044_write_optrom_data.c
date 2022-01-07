
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct scsi_qla_host {int host; } ;


 int GFP_KERNEL ;
 int QLA8044_MAX_OPTROM_BURST_DWORDS ;
 int QLA8044_SECTOR_SIZE ;
 int QLA_FUNCTION_FAILED ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int memcpy (int *,void*,int) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,...) ;
 int ql_dbg_user ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,...) ;
 int ql_log_warn ;
 int qla8044_erase_flash_sector (struct scsi_qla_host*,int) ;
 int qla8044_flash_lock (struct scsi_qla_host*) ;
 int qla8044_flash_unlock (struct scsi_qla_host*) ;
 int qla8044_protect_flash (struct scsi_qla_host*) ;
 int qla8044_unprotect_flash (struct scsi_qla_host*) ;
 int qla8044_write_flash_buffer_mode (struct scsi_qla_host*,int*,int,int) ;
 int qla8044_write_flash_dword_mode (struct scsi_qla_host*,int*,int,int) ;
 int scsi_block_requests (int ) ;
 int scsi_unblock_requests (int ) ;

int
qla8044_write_optrom_data(struct scsi_qla_host *vha, void *buf,
     uint32_t offset, uint32_t length)
{
 int rval = QLA_FUNCTION_FAILED, i, burst_iter_count;
 int dword_count, erase_sec_count;
 uint32_t erase_offset;
 uint8_t *p_cache, *p_src;

 erase_offset = offset;

 p_cache = kcalloc(length, sizeof(uint8_t), GFP_KERNEL);
 if (!p_cache)
  return QLA_FUNCTION_FAILED;

 memcpy(p_cache, buf, length);
 p_src = p_cache;
 dword_count = length / sizeof(uint32_t);



 burst_iter_count = dword_count / QLA8044_MAX_OPTROM_BURST_DWORDS;
 erase_sec_count = length / QLA8044_SECTOR_SIZE;


 scsi_block_requests(vha->host);

 qla8044_flash_lock(vha);
 qla8044_unprotect_flash(vha);


 for (i = 0; i < erase_sec_count; i++) {
  rval = qla8044_erase_flash_sector(vha, erase_offset);
  ql_dbg(ql_dbg_user, vha, 0xb138,
      "Done erase of sector=0x%x.\n",
      erase_offset);
  if (rval) {
   ql_log(ql_log_warn, vha, 0xb121,
       "Failed to erase the sector having address: "
       "0x%x.\n", erase_offset);
   goto out;
  }
  erase_offset += QLA8044_SECTOR_SIZE;
 }
 ql_dbg(ql_dbg_user, vha, 0xb13f,
     "Got write for addr = 0x%x length=0x%x.\n",
     offset, length);

 for (i = 0; i < burst_iter_count; i++) {


  rval = qla8044_write_flash_buffer_mode(vha, (uint32_t *)p_src,
      offset, QLA8044_MAX_OPTROM_BURST_DWORDS);
  if (rval) {

   ql_log(ql_log_warn, vha, 0xb122,
       "Failed to write flash in buffer mode, "
       "Reverting to slow-write.\n");
   rval = qla8044_write_flash_dword_mode(vha,
       (uint32_t *)p_src, offset,
       QLA8044_MAX_OPTROM_BURST_DWORDS);
  }
  p_src += sizeof(uint32_t) * QLA8044_MAX_OPTROM_BURST_DWORDS;
  offset += sizeof(uint32_t) * QLA8044_MAX_OPTROM_BURST_DWORDS;
 }
 ql_dbg(ql_dbg_user, vha, 0xb133,
     "Done writing.\n");

out:
 qla8044_protect_flash(vha);
 qla8044_flash_unlock(vha);
 scsi_unblock_requests(vha->host);
 kfree(p_cache);

 return rval;
}
