
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvec {int dummy; } ;
struct cifs_io_parms {int netfid; } ;
struct cifs_fid {int netfid; } ;


 int CIFSSMBWrite2 (unsigned int const,struct cifs_io_parms*,unsigned int*,struct kvec*,unsigned long) ;

__attribute__((used)) static int
cifs_sync_write(const unsigned int xid, struct cifs_fid *pfid,
  struct cifs_io_parms *parms, unsigned int *written,
  struct kvec *iov, unsigned long nr_segs)
{

 parms->netfid = pfid->netfid;
 return CIFSSMBWrite2(xid, parms, written, iov, nr_segs);
}
