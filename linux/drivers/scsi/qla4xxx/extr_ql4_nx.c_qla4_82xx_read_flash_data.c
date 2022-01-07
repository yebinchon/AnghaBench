
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int dummy; } ;


 int KERN_WARNING ;
 int __constant_cpu_to_le32 (int) ;
 int cond_resched () ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;
 scalar_t__ qla4_82xx_do_rom_fast_read (struct scsi_qla_host*,int,int*) ;
 scalar_t__ qla4_82xx_rom_lock (struct scsi_qla_host*) ;
 int qla4_82xx_rom_unlock (struct scsi_qla_host*) ;
 int udelay (int) ;

__attribute__((used)) static uint32_t *
qla4_82xx_read_flash_data(struct scsi_qla_host *ha, uint32_t *dwptr,
    uint32_t faddr, uint32_t length)
{
 uint32_t i;
 uint32_t val;
 int loops = 0;
 while ((qla4_82xx_rom_lock(ha) != 0) && (loops < 50000)) {
  udelay(100);
  cond_resched();
  loops++;
 }
 if (loops >= 50000) {
  ql4_printk(KERN_WARNING, ha, "ROM lock failed\n");
  return dwptr;
 }


 for (i = 0; i < length/4; i++, faddr += 4) {
  if (qla4_82xx_do_rom_fast_read(ha, faddr, &val)) {
   ql4_printk(KERN_WARNING, ha,
       "Do ROM fast read failed\n");
   goto done_read;
  }
  dwptr[i] = __constant_cpu_to_le32(val);
 }

done_read:
 qla4_82xx_rom_unlock(ha);
 return dwptr;
}
