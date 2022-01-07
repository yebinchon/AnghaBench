
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int local_nls; } ;
typedef int FILE_ALL_INFO ;


 int CIFSSMBQPathInfo (unsigned int const,struct cifs_tcon*,char const*,int *,int ,int ,int ) ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int SMBQueryInformation (unsigned int const,struct cifs_tcon*,char const*,int *,int ,int ) ;
 int cifs_remap (struct cifs_sb_info*) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;

__attribute__((used)) static int
cifs_is_path_accessible(const unsigned int xid, struct cifs_tcon *tcon,
   struct cifs_sb_info *cifs_sb, const char *full_path)
{
 int rc;
 FILE_ALL_INFO *file_info;

 file_info = kmalloc(sizeof(FILE_ALL_INFO), GFP_KERNEL);
 if (file_info == ((void*)0))
  return -ENOMEM;

 rc = CIFSSMBQPathInfo(xid, tcon, full_path, file_info,
         0 , cifs_sb->local_nls,
         cifs_remap(cifs_sb));

 if (rc == -EOPNOTSUPP || rc == -EINVAL)
  rc = SMBQueryInformation(xid, tcon, full_path, file_info,
    cifs_sb->local_nls, cifs_remap(cifs_sb));
 kfree(file_info);
 return rc;
}
