
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int dummy; } ;


 int BBbReadEmbedded (struct vnt_private*,int,unsigned char*) ;
 int BBbWriteEmbedded (struct vnt_private*,int,unsigned char) ;
 unsigned char BIT (int ) ;

void
BBvPowerSaveModeON(struct vnt_private *priv)
{
 unsigned char byOrgData;

 BBbReadEmbedded(priv, 0x0D, &byOrgData);
 byOrgData |= BIT(0);
 BBbWriteEmbedded(priv, 0x0D, byOrgData);
}
