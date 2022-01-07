
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int rtl8192_BB_Config_ParaFile (struct net_device*) ;
 int rtl8192_InitBBRFRegDef (struct net_device*) ;

void rtl8192_BBConfig(struct net_device *dev)
{
 rtl8192_InitBBRFRegDef(dev);




 rtl8192_BB_Config_ParaFile(dev);
}
