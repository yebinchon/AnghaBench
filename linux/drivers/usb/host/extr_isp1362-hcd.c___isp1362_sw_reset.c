
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1362_hcd {int dummy; } ;


 int HCCMDSTAT ;
 int HCSWRES ;
 int HCSWRES_MAGIC ;
 int OHCI_HCR ;
 int isp1362_read_reg32 (struct isp1362_hcd*,int ) ;
 int isp1362_write_reg16 (struct isp1362_hcd*,int ,int ) ;
 int isp1362_write_reg32 (struct isp1362_hcd*,int ,int) ;
 int mdelay (int) ;
 int pr_err (char*) ;

__attribute__((used)) static void __isp1362_sw_reset(struct isp1362_hcd *isp1362_hcd)
{
 int tmp = 20;

 isp1362_write_reg16(isp1362_hcd, HCSWRES, HCSWRES_MAGIC);
 isp1362_write_reg32(isp1362_hcd, HCCMDSTAT, OHCI_HCR);
 while (--tmp) {
  mdelay(1);
  if (!(isp1362_read_reg32(isp1362_hcd, HCCMDSTAT) & OHCI_HCR))
   break;
 }
 if (!tmp)
  pr_err("Software reset timeout\n");
}
