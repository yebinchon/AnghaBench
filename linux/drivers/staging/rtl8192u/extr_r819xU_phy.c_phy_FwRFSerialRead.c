
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
typedef enum rf90_radio_path_e { ____Placeholder_rf90_radio_path_e } rf90_radio_path_e ;


 int QPNR ;
 int RF_DATA ;
 int read_nic_dword (struct net_device*,int ,int*) ;
 int udelay (int) ;
 int write_nic_dword (struct net_device*,int ,int) ;

__attribute__((used)) static u32 phy_FwRFSerialRead(struct net_device *dev,
         enum rf90_radio_path_e e_rfpath,
         u32 offset)
{
 u32 reg = 0;
 u32 data = 0;
 u8 time = 0;
 u32 tmp;
 data |= ((offset&0xFF)<<12);

 data |= ((e_rfpath&0x3)<<20);


 data |= 0x80000000;

 read_nic_dword(dev, QPNR, &tmp);
 while (tmp & 0x80000000) {



  if (time++ < 100) {
   udelay(10);
   read_nic_dword(dev, QPNR, &tmp);
  } else {
   break;
  }
 }

 write_nic_dword(dev, QPNR, data);

 read_nic_dword(dev, QPNR, &tmp);
 while (tmp & 0x80000000) {



  if (time++ < 100) {
   udelay(10);
   read_nic_dword(dev, QPNR, &tmp);
  } else {
   return 0;
  }
 }
 read_nic_dword(dev, RF_DATA, &reg);

 return reg;
}
