
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct link_qual {int false_cca; int rx_failed; } ;


 int CNT0 ;
 int CNT0_FCS_ERROR ;
 int rt2400pci_bbp_read (struct rt2x00_dev*,int) ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;

__attribute__((used)) static void rt2400pci_link_stats(struct rt2x00_dev *rt2x00dev,
     struct link_qual *qual)
{
 u32 reg;
 u8 bbp;




 reg = rt2x00mmio_register_read(rt2x00dev, CNT0);
 qual->rx_failed = rt2x00_get_field32(reg, CNT0_FCS_ERROR);




 bbp = rt2400pci_bbp_read(rt2x00dev, 39);
 qual->false_cca = bbp;
}
