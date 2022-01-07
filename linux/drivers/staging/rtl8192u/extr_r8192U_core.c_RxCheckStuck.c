
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int IrpPendingCount; } ;
struct net_device {int dummy; } ;
typedef int RESET_TYPE ;


 int COMP_RESET ;
 scalar_t__ HalRxCheckStuck819xUsb (struct net_device*) ;
 int RESET_TYPE_NORESET ;
 int RESET_TYPE_SILENT ;
 int RT_TRACE (int ,char*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static RESET_TYPE RxCheckStuck(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 bool bRxCheck = 0;

 if (priv->IrpPendingCount > 1)
  bRxCheck = 1;

 if (bRxCheck) {
  if (HalRxCheckStuck819xUsb(dev)) {
   RT_TRACE(COMP_RESET, "RxStuck Condition\n");
   return RESET_TYPE_SILENT;
  }
 }
 return RESET_TYPE_NORESET;
}
