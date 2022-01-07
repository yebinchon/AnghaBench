
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscsifrnt_info {int wq_pause; scalar_t__ waiting_pause; scalar_t__ callers; } ;


 int wake_up (int *) ;

__attribute__((used)) static void scsifront_return(struct vscsifrnt_info *info)
{
 info->callers--;
 if (info->callers)
  return;

 if (!info->waiting_pause)
  return;

 info->waiting_pause = 0;
 wake_up(&info->wq_pause);
}
