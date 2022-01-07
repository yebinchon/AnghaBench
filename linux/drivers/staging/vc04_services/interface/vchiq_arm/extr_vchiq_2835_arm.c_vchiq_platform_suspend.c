
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {int dummy; } ;
typedef int VCHIQ_STATUS_T ;


 int VCHIQ_ERROR ;

VCHIQ_STATUS_T
vchiq_platform_suspend(struct vchiq_state *state)
{
 return VCHIQ_ERROR;
}
