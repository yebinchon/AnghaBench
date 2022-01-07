
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscsifrnt_info {int wq_sync; scalar_t__ wait_ring_available; } ;


 int wake_up (int *) ;

__attribute__((used)) static void scsifront_wake_up(struct vscsifrnt_info *info)
{
 info->wait_ring_available = 0;
 wake_up(&info->wq_sync);
}
