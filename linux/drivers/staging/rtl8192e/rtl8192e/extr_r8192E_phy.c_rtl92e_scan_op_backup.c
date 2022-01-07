
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct r8192_priv {TYPE_1__* rtllib; scalar_t__ up; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* InitialGainHandler ) (struct net_device*,int ) ;} ;


 int COMP_SCAN ;
 int IG_Backup ;
 int IG_Restore ;
 int RT_TRACE (int ,char*) ;


 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int stub1 (struct net_device*,int ) ;
 int stub2 (struct net_device*,int ) ;

void rtl92e_scan_op_backup(struct net_device *dev, u8 Operation)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 if (priv->up) {
  switch (Operation) {
  case 129:
   priv->rtllib->InitialGainHandler(dev, IG_Backup);
   break;

  case 128:
   priv->rtllib->InitialGainHandler(dev, IG_Restore);
   break;

  default:
   RT_TRACE(COMP_SCAN, "Unknown Scan Backup Operation.\n");
   break;
  }
 }
}
