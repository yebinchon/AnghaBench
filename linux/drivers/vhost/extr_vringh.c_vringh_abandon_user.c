
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vringh {unsigned int last_avail_idx; } ;



void vringh_abandon_user(struct vringh *vrh, unsigned int num)
{


 vrh->last_avail_idx -= num;
}
