
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct link_qual {void* false_cca; void* rx_failed; } ;


 int STA_CSR0 ;
 int STA_CSR0_FCS_ERROR ;
 int STA_CSR1 ;
 int STA_CSR1_FALSE_CCA_ERROR ;
 void* rt2x00_get_field32 (int ,int ) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;

__attribute__((used)) static void rt61pci_link_stats(struct rt2x00_dev *rt2x00dev,
          struct link_qual *qual)
{
 u32 reg;




 reg = rt2x00mmio_register_read(rt2x00dev, STA_CSR0);
 qual->rx_failed = rt2x00_get_field32(reg, STA_CSR0_FCS_ERROR);




 reg = rt2x00mmio_register_read(rt2x00dev, STA_CSR1);
 qual->false_cca = rt2x00_get_field32(reg, STA_CSR1_FALSE_CCA_ERROR);
}
