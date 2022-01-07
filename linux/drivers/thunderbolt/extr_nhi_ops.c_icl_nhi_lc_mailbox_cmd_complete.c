
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_nhi {int pdev; } ;


 int ETIMEDOUT ;
 int VS_CAP_18 ;
 int VS_CAP_18_DONE ;
 int VS_CAP_19 ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int icl_nhi_lc_mailbox_cmd_complete(struct tb_nhi *nhi, int timeout)
{
 unsigned long end;
 u32 data;

 if (!timeout)
  goto clear;

 end = jiffies + msecs_to_jiffies(timeout);
 do {
  pci_read_config_dword(nhi->pdev, VS_CAP_18, &data);
  if (data & VS_CAP_18_DONE)
   goto clear;
  msleep(100);
 } while (time_before(jiffies, end));

 return -ETIMEDOUT;

clear:

 pci_write_config_dword(nhi->pdev, VS_CAP_19, 0);
 return 0;
}
