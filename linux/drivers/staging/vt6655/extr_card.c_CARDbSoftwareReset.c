
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int dummy; } ;


 int MACbSafeSoftwareReset (struct vnt_private*) ;

bool CARDbSoftwareReset(struct vnt_private *priv)
{

 if (!MACbSafeSoftwareReset(priv))
  return 0;

 return 1;
}
