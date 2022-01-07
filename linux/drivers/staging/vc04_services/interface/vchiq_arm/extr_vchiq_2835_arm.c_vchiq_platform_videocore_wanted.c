
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {int dummy; } ;



int
vchiq_platform_videocore_wanted(struct vchiq_state *state)
{
 return 1;
}
