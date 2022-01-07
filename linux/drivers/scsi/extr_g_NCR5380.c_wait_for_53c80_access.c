
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NCR5380_hostdata {scalar_t__ board; int c400_ctl_status; int connected; } ;


 scalar_t__ BOARD_DTC3181E ;
 int CSR_53C80_REG ;
 int CSR_BASE ;
 int CSR_RESET ;
 int KERN_ERR ;
 int NCR5380_read (int ) ;
 int NCR5380_write (int ,int ) ;
 int scmd_printk (int ,int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static void wait_for_53c80_access(struct NCR5380_hostdata *hostdata)
{
 int count = 10000;

 do {
  if (hostdata->board == BOARD_DTC3181E)
   udelay(4);
  if (NCR5380_read(hostdata->c400_ctl_status) & CSR_53C80_REG)
   return;
 } while (--count > 0);

 scmd_printk(KERN_ERR, hostdata->connected,
             "53c80 registers not accessible, device will be reset\n");
 NCR5380_write(hostdata->c400_ctl_status, CSR_RESET);
 NCR5380_write(hostdata->c400_ctl_status, CSR_BASE);
}
