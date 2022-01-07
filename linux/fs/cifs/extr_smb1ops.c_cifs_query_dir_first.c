
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;
struct cifs_search_info {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_fid {int netfid; } ;
typedef int __u16 ;


 int CIFSFindFirst (unsigned int const,struct cifs_tcon*,char const*,struct cifs_sb_info*,int *,int ,struct cifs_search_info*,int) ;
 int FYI ;
 int cifs_dbg (int ,char*,int) ;

__attribute__((used)) static int
cifs_query_dir_first(const unsigned int xid, struct cifs_tcon *tcon,
       const char *path, struct cifs_sb_info *cifs_sb,
       struct cifs_fid *fid, __u16 search_flags,
       struct cifs_search_info *srch_inf)
{
 int rc;

 rc = CIFSFindFirst(xid, tcon, path, cifs_sb,
      &fid->netfid, search_flags, srch_inf, 1);
 if (rc)
  cifs_dbg(FYI, "find first failed=%d\n", rc);
 return rc;
}
