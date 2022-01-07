
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int dummy; } ;


 int MAC_MAX_CONTEXT_SIZE_PAGE0 ;
 int MAC_MAX_CONTEXT_SIZE_PAGE1 ;
 int MACbSoftwareReset (struct vnt_private*) ;
 int MACvRestoreContext (struct vnt_private*,unsigned char*) ;
 int MACvSaveContext (struct vnt_private*,unsigned char*) ;

bool MACbSafeSoftwareReset(struct vnt_private *priv)
{
 unsigned char abyTmpRegData[MAC_MAX_CONTEXT_SIZE_PAGE0 + MAC_MAX_CONTEXT_SIZE_PAGE1];
 bool bRetVal;






 MACvSaveContext(priv, abyTmpRegData);

 bRetVal = MACbSoftwareReset(priv);

 MACvRestoreContext(priv, abyTmpRegData);

 return bRetVal;
}
