
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
typedef enum rf90_radio_path { ____Placeholder_rf90_radio_path } rf90_radio_path ;


 int QPNR ;
 int RF_DATA ;
 int rtl92e_readl (struct net_device*,int ) ;
 int rtl92e_writel (struct net_device*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static u32 _rtl92e_phy_rf_fw_read(struct net_device *dev,
      enum rf90_radio_path eRFPath, u32 Offset)
{
 u32 Data = 0;
 u8 time = 0;

 Data |= ((Offset & 0xFF) << 12);
 Data |= ((eRFPath & 0x3) << 20);
 Data |= 0x80000000;
 while (rtl92e_readl(dev, QPNR) & 0x80000000) {
  if (time++ < 100)
   udelay(10);
  else
   break;
 }
 rtl92e_writel(dev, QPNR, Data);
 while (rtl92e_readl(dev, QPNR) & 0x80000000) {
  if (time++ < 100)
   udelay(10);
  else
   return 0;
 }
 return rtl92e_readl(dev, RF_DATA);

}
