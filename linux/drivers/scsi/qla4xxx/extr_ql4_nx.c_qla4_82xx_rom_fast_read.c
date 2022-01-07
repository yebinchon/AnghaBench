
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;


 int DRIVER_NAME ;
 int KERN_WARNING ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,int ) ;
 int qla4_82xx_do_rom_fast_read (struct scsi_qla_host*,int,int*) ;
 scalar_t__ qla4_82xx_rom_lock (struct scsi_qla_host*) ;
 int qla4_82xx_rom_unlock (struct scsi_qla_host*) ;
 int udelay (int) ;

__attribute__((used)) static int
qla4_82xx_rom_fast_read(struct scsi_qla_host *ha, int addr, int *valp)
{
 int ret, loops = 0;

 while ((qla4_82xx_rom_lock(ha) != 0) && (loops < 50000)) {
  udelay(100);
  loops++;
 }
 if (loops >= 50000) {
  ql4_printk(KERN_WARNING, ha, "%s: qla4_82xx_rom_lock failed\n",
      DRIVER_NAME);
  return -1;
 }
 ret = qla4_82xx_do_rom_fast_read(ha, addr, valp);
 qla4_82xx_rom_unlock(ha);
 return ret;
}
