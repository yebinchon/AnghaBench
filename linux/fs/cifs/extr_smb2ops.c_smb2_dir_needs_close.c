
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifsFileInfo {int invalidHandle; } ;



__attribute__((used)) static bool
smb2_dir_needs_close(struct cifsFileInfo *cfile)
{
 return !cfile->invalidHandle;
}
