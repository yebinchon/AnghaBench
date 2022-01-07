
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int endOfSearch; } ;
struct cifsFileInfo {int invalidHandle; TYPE_1__ srch_inf; } ;



__attribute__((used)) static bool
cifs_dir_needs_close(struct cifsFileInfo *cfile)
{
 return !cfile->srch_inf.endOfSearch && !cfile->invalidHandle;
}
