
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u8 ;
typedef int u16 ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int sfp_data_dma; int * sfp_data; } ;
typedef int dma_addr_t ;


 int BIT_1 ;
 int QLA_SUCCESS ;
 int SFP_BLOCK_SIZE ;
 int SFP_DEV_SIZE ;
 int memcpy (char*,int *,int) ;
 int memset (int *,int ,int) ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,int,int,int) ;
 int ql_log_warn ;
 int qla2x00_read_sfp (struct scsi_qla_host*,int,int *,int,int,int,int ) ;

int
qla2x00_read_sfp_dev(struct scsi_qla_host *vha, char *buf, int count)
{
 struct qla_hw_data *ha = vha->hw;
 uint16_t iter, addr, offset;
 dma_addr_t phys_addr;
 int rval, c;
 u8 *sfp_data;

 memset(ha->sfp_data, 0, SFP_DEV_SIZE);
 addr = 0xa0;
 phys_addr = ha->sfp_data_dma;
 sfp_data = ha->sfp_data;
 offset = c = 0;

 for (iter = 0; iter < SFP_DEV_SIZE / SFP_BLOCK_SIZE; iter++) {
  if (iter == 4) {

   addr = 0xa2;
   offset = 0;
  }

  rval = qla2x00_read_sfp(vha, phys_addr, sfp_data,
      addr, offset, SFP_BLOCK_SIZE, BIT_1);
  if (rval != QLA_SUCCESS) {
   ql_log(ql_log_warn, vha, 0x706d,
       "Unable to read SFP data (%x/%x/%x).\n", rval,
       addr, offset);

   return rval;
  }

  if (buf && (c < count)) {
   u16 sz;

   if ((count - c) >= SFP_BLOCK_SIZE)
    sz = SFP_BLOCK_SIZE;
   else
    sz = count - c;

   memcpy(buf, sfp_data, sz);
   buf += SFP_BLOCK_SIZE;
   c += sz;
  }
  phys_addr += SFP_BLOCK_SIZE;
  sfp_data += SFP_BLOCK_SIZE;
  offset += SFP_BLOCK_SIZE;
 }

 return rval;
}
