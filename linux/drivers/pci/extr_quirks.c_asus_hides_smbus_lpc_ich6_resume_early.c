
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int asus_hides_smbus ;
 scalar_t__ asus_rcba_base ;
 scalar_t__ likely (int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void asus_hides_smbus_lpc_ich6_resume_early(struct pci_dev *dev)
{
 u32 val;

 if (likely(!asus_hides_smbus || !asus_rcba_base))
  return;


 val = readl(asus_rcba_base + 0x3418);


 writel(val & 0xFFFFFFF7, asus_rcba_base + 0x3418);
}
