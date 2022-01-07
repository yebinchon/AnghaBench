
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;
struct cifs_fid {int netfid; } ;


 int CIFSFindClose (unsigned int const,struct cifs_tcon*,int ) ;

__attribute__((used)) static int
cifs_close_dir(const unsigned int xid, struct cifs_tcon *tcon,
        struct cifs_fid *fid)
{
 return CIFSFindClose(xid, tcon, fid->netfid);
}
