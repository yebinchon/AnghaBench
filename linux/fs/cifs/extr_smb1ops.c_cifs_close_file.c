
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;
struct cifs_fid {int netfid; } ;


 int CIFSSMBClose (unsigned int const,struct cifs_tcon*,int ) ;

__attribute__((used)) static void
cifs_close_file(const unsigned int xid, struct cifs_tcon *tcon,
  struct cifs_fid *fid)
{
 CIFSSMBClose(xid, tcon, fid->netfid);
}
