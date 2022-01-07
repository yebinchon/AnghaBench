
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ status; scalar_t__ error; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* cmd_status ;

__attribute__((used)) static int ibmvfc_get_err_index(u16 status, u16 error)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(cmd_status); i++)
  if ((cmd_status[i].status & status) == cmd_status[i].status &&
      cmd_status[i].error == error)
   return i;

 return -EINVAL;
}
