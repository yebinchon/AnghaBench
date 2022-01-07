
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct icm {scalar_t__ vnd_cap; int upstream_port; } ;


 int ETIMEDOUT ;
 scalar_t__ PCIE2CIO_CMD ;
 int PCIE2CIO_CMD_START ;
 int PCIE2CIO_CMD_TIMEOUT ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int msleep (int) ;
 int pci_read_config_dword (int ,scalar_t__,int*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int pci2cio_wait_completion(struct icm *icm, unsigned long timeout_msec)
{
 unsigned long end = jiffies + msecs_to_jiffies(timeout_msec);
 u32 cmd;

 do {
  pci_read_config_dword(icm->upstream_port,
          icm->vnd_cap + PCIE2CIO_CMD, &cmd);
  if (!(cmd & PCIE2CIO_CMD_START)) {
   if (cmd & PCIE2CIO_CMD_TIMEOUT)
    break;
   return 0;
  }

  msleep(50);
 } while (time_before(jiffies, end));

 return -ETIMEDOUT;
}
