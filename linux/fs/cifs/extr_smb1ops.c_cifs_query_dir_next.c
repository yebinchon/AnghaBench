
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;
struct cifs_search_info {int dummy; } ;
struct cifs_fid {int netfid; } ;
typedef int __u16 ;


 int CIFSFindNext (unsigned int const,struct cifs_tcon*,int ,int ,struct cifs_search_info*) ;

__attribute__((used)) static int
cifs_query_dir_next(const unsigned int xid, struct cifs_tcon *tcon,
      struct cifs_fid *fid, __u16 search_flags,
      struct cifs_search_info *srch_inf)
{
 return CIFSFindNext(xid, tcon, fid->netfid, search_flags, srch_inf);
}
