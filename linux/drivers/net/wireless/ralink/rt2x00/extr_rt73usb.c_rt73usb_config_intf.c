
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00intf_conf {int sync; void** bssid; void** mac; } ;
struct rt2x00_intf {int dummy; } ;
struct rt2x00_dev {int dummy; } ;


 unsigned int const CONFIG_UPDATE_BSSID ;
 unsigned int const CONFIG_UPDATE_MAC ;
 unsigned int const CONFIG_UPDATE_TYPE ;
 int MAC_CSR2 ;
 int MAC_CSR3_UNICAST_TO_ME_MASK ;
 int MAC_CSR4 ;
 int MAC_CSR5_BSS_ID_MASK ;
 int TXRX_CSR9 ;
 int TXRX_CSR9_TSF_SYNC ;
 void* cpu_to_le32 (int ) ;
 int le32_to_cpu (void*) ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00usb_register_multiwrite (struct rt2x00_dev*,int ,void**,int) ;
 int rt2x00usb_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00usb_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt73usb_config_intf(struct rt2x00_dev *rt2x00dev,
    struct rt2x00_intf *intf,
    struct rt2x00intf_conf *conf,
    const unsigned int flags)
{
 u32 reg;

 if (flags & CONFIG_UPDATE_TYPE) {



  reg = rt2x00usb_register_read(rt2x00dev, TXRX_CSR9);
  rt2x00_set_field32(&reg, TXRX_CSR9_TSF_SYNC, conf->sync);
  rt2x00usb_register_write(rt2x00dev, TXRX_CSR9, reg);
 }

 if (flags & CONFIG_UPDATE_MAC) {
  reg = le32_to_cpu(conf->mac[1]);
  rt2x00_set_field32(&reg, MAC_CSR3_UNICAST_TO_ME_MASK, 0xff);
  conf->mac[1] = cpu_to_le32(reg);

  rt2x00usb_register_multiwrite(rt2x00dev, MAC_CSR2,
         conf->mac, sizeof(conf->mac));
 }

 if (flags & CONFIG_UPDATE_BSSID) {
  reg = le32_to_cpu(conf->bssid[1]);
  rt2x00_set_field32(&reg, MAC_CSR5_BSS_ID_MASK, 3);
  conf->bssid[1] = cpu_to_le32(reg);

  rt2x00usb_register_multiwrite(rt2x00dev, MAC_CSR4,
         conf->bssid, sizeof(conf->bssid));
 }
}
