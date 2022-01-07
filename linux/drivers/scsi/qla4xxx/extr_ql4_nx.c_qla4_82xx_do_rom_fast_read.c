
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;


 int DRIVER_NAME ;
 int QLA82XX_ROMUSB_ROM_ABYTE_CNT ;
 int QLA82XX_ROMUSB_ROM_ADDRESS ;
 int QLA82XX_ROMUSB_ROM_DUMMY_BYTE_CNT ;
 int QLA82XX_ROMUSB_ROM_INSTR_OPCODE ;
 int QLA82XX_ROMUSB_ROM_RDATA ;
 int printk (char*,int ) ;
 int qla4_82xx_rd_32 (struct scsi_qla_host*,int ) ;
 scalar_t__ qla4_82xx_wait_rom_done (struct scsi_qla_host*) ;
 int qla4_82xx_wr_32 (struct scsi_qla_host*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int
qla4_82xx_do_rom_fast_read(struct scsi_qla_host *ha, int addr, int *valp)
{
 qla4_82xx_wr_32(ha, QLA82XX_ROMUSB_ROM_ADDRESS, addr);
 qla4_82xx_wr_32(ha, QLA82XX_ROMUSB_ROM_DUMMY_BYTE_CNT, 0);
 qla4_82xx_wr_32(ha, QLA82XX_ROMUSB_ROM_ABYTE_CNT, 3);
 qla4_82xx_wr_32(ha, QLA82XX_ROMUSB_ROM_INSTR_OPCODE, 0xb);
 if (qla4_82xx_wait_rom_done(ha)) {
  printk("%s: Error waiting for rom done\n", DRIVER_NAME);
  return -1;
 }

 qla4_82xx_wr_32(ha, QLA82XX_ROMUSB_ROM_DUMMY_BYTE_CNT, 0);
 udelay(10);
 qla4_82xx_wr_32(ha, QLA82XX_ROMUSB_ROM_ABYTE_CNT, 0);

 *valp = qla4_82xx_rd_32(ha, QLA82XX_ROMUSB_ROM_RDATA);
 return 0;
}
