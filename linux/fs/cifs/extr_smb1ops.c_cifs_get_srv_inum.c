
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int local_nls; } ;
typedef int FILE_ALL_INFO ;


 int CIFSGetSrvInodeNumber (unsigned int const,struct cifs_tcon*,char const*,int *,int ,int ) ;
 int cifs_remap (struct cifs_sb_info*) ;

__attribute__((used)) static int
cifs_get_srv_inum(const unsigned int xid, struct cifs_tcon *tcon,
    struct cifs_sb_info *cifs_sb, const char *full_path,
    u64 *uniqueid, FILE_ALL_INFO *data)
{
 return CIFSGetSrvInodeNumber(xid, tcon, full_path, uniqueid,
         cifs_sb->local_nls,
         cifs_remap(cifs_sb));
}
