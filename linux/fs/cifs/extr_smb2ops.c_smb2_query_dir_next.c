
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;
struct cifs_search_info {int dummy; } ;
struct cifs_fid {int volatile_fid; int persistent_fid; } ;
typedef int __u16 ;


 int SMB2_query_directory (unsigned int const,struct cifs_tcon*,int ,int ,int ,struct cifs_search_info*) ;

__attribute__((used)) static int
smb2_query_dir_next(const unsigned int xid, struct cifs_tcon *tcon,
      struct cifs_fid *fid, __u16 search_flags,
      struct cifs_search_info *srch_inf)
{
 return SMB2_query_directory(xid, tcon, fid->persistent_fid,
        fid->volatile_fid, 0, srch_inf);
}
