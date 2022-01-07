
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chp_id {int dummy; } ;
struct TYPE_2__ {int state; } ;


 int ENODEV ;
 TYPE_1__* chpid_to_chp (struct chp_id) ;

int chp_get_status(struct chp_id chpid)
{
 return (chpid_to_chp(chpid) ? chpid_to_chp(chpid)->state : -ENODEV);
}
