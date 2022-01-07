
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscsifrnt_info {int callers; scalar_t__ pause; } ;



__attribute__((used)) static int scsifront_enter(struct vscsifrnt_info *info)
{
 if (info->pause)
  return 1;
 info->callers++;
 return 0;
}
