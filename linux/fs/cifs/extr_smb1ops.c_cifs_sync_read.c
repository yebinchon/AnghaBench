
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_io_parms {int netfid; } ;
struct cifs_fid {int netfid; } ;


 int CIFSSMBRead (unsigned int const,struct cifs_io_parms*,unsigned int*,char**,int*) ;

__attribute__((used)) static int
cifs_sync_read(const unsigned int xid, struct cifs_fid *pfid,
        struct cifs_io_parms *parms, unsigned int *bytes_read,
        char **buf, int *buf_type)
{
 parms->netfid = pfid->netfid;
 return CIFSSMBRead(xid, parms, bytes_read, buf, buf_type);
}
