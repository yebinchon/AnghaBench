
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chp_id {int dummy; } ;


 int * chpid_to_chp (struct chp_id) ;

int chp_is_registered(struct chp_id chpid)
{
 return chpid_to_chp(chpid) != ((void*)0);
}
