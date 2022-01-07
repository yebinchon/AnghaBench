
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifsInodeInfo {int dummy; } ;
struct cifsFileInfo {int dummy; } ;


 int FYI ;
 int cifs_dbg (int ,char*,int) ;
 int cifs_get_writable_file (struct cifsInodeInfo*,int,struct cifsFileInfo**) ;

struct cifsFileInfo *
find_writable_file(struct cifsInodeInfo *cifs_inode, bool fsuid_only)
{
 struct cifsFileInfo *cfile;
 int rc;

 rc = cifs_get_writable_file(cifs_inode, fsuid_only, &cfile);
 if (rc)
  cifs_dbg(FYI, "couldn't find writable handle rc=%d", rc);

 return cfile;
}
