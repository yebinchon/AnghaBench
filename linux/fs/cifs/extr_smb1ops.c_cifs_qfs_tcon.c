
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;


 int CIFSSMBQFSAttributeInfo (unsigned int const,struct cifs_tcon*) ;
 int CIFSSMBQFSDeviceInfo (unsigned int const,struct cifs_tcon*) ;

__attribute__((used)) static void
cifs_qfs_tcon(const unsigned int xid, struct cifs_tcon *tcon)
{
 CIFSSMBQFSDeviceInfo(xid, tcon);
 CIFSSMBQFSAttributeInfo(xid, tcon);
}
