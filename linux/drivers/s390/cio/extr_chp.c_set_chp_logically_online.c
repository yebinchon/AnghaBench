
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chp_id {int dummy; } ;
struct TYPE_2__ {int state; } ;


 TYPE_1__* chpid_to_chp (struct chp_id) ;

__attribute__((used)) static void set_chp_logically_online(struct chp_id chpid, int onoff)
{
 chpid_to_chp(chpid)->state = onoff;
}
