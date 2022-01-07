
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifsFileInfo {int count; } ;



__attribute__((used)) static inline void
cifsFileInfo_get_locked(struct cifsFileInfo *cifs_file)
{
 ++cifs_file->count;
}
