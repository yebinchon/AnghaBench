
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ persistent_fid; scalar_t__ volatile_fid; } ;
struct cifsFileInfo {TYPE_1__ fid; } ;



__attribute__((used)) static bool
smb2_compare_fids(struct cifsFileInfo *ob1, struct cifsFileInfo *ob2)
{
 return ob1->fid.persistent_fid == ob2->fid.persistent_fid &&
        ob1->fid.volatile_fid == ob2->fid.volatile_fid;
}
