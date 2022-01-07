
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8192_priv {scalar_t__ bTXPowerDataReadFromEEPORM; } ;
struct net_device {int dummy; } ;


 int COMP_DBG ;
 int COMP_PHY ;
 int MACPHY_ArrayLength ;
 int MACPHY_Array_PGLength ;
 int RT_TRACE (int ,char*,...) ;
 int* Rtl819XMACPHY_Array ;
 int* Rtl819XMACPHY_Array_PG ;
 int rtl92e_set_bb_reg (struct net_device*,int,int,int) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

void rtl92e_config_mac(struct net_device *dev)
{
 u32 dwArrayLen = 0, i = 0;
 u32 *pdwArray = ((void*)0);
 struct r8192_priv *priv = rtllib_priv(dev);

 if (priv->bTXPowerDataReadFromEEPORM) {
  RT_TRACE(COMP_PHY, "Rtl819XMACPHY_Array_PG\n");
  dwArrayLen = MACPHY_Array_PGLength;
  pdwArray = Rtl819XMACPHY_Array_PG;

 } else {
  RT_TRACE(COMP_PHY, "Read rtl819XMACPHY_Array\n");
  dwArrayLen = MACPHY_ArrayLength;
  pdwArray = Rtl819XMACPHY_Array;
 }
 for (i = 0; i < dwArrayLen; i += 3) {
  RT_TRACE(COMP_DBG,
    "The Rtl8190MACPHY_Array[0] is %x Rtl8190MACPHY_Array[1] is %x Rtl8190MACPHY_Array[2] is %x\n",
    pdwArray[i], pdwArray[i+1], pdwArray[i+2]);
  if (pdwArray[i] == 0x318)
   pdwArray[i+2] = 0x00000800;
  rtl92e_set_bb_reg(dev, pdwArray[i], pdwArray[i+1],
      pdwArray[i+2]);
 }
 return;

}
