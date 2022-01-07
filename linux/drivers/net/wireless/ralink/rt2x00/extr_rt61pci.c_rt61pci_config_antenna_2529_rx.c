
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int MAC_CSR13 ;
 int MAC_CSR13_DIR3 ;
 int MAC_CSR13_DIR4 ;
 int MAC_CSR13_VAL3 ;
 int MAC_CSR13_VAL4 ;
 int rt2x00_set_field32 (int *,int ,int const) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt61pci_config_antenna_2529_rx(struct rt2x00_dev *rt2x00dev,
        const int p1, const int p2)
{
 u32 reg;

 reg = rt2x00mmio_register_read(rt2x00dev, MAC_CSR13);

 rt2x00_set_field32(&reg, MAC_CSR13_DIR4, 0);
 rt2x00_set_field32(&reg, MAC_CSR13_VAL4, p1);

 rt2x00_set_field32(&reg, MAC_CSR13_DIR3, 0);
 rt2x00_set_field32(&reg, MAC_CSR13_VAL3, !p2);

 rt2x00mmio_register_write(rt2x00dev, MAC_CSR13, reg);
}
