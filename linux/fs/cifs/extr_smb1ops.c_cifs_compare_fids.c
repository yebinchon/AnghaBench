
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ netfid; } ;
struct cifsFileInfo {TYPE_1__ fid; } ;



__attribute__((used)) static bool
cifs_compare_fids(struct cifsFileInfo *ob1, struct cifsFileInfo *ob2)
{
 return ob1->fid.netfid == ob2->fid.netfid;
}
