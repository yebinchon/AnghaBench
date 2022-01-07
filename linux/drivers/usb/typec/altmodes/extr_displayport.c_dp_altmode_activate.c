
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_altmode {int dummy; } ;


 int typec_altmode_enter (struct typec_altmode*) ;
 int typec_altmode_exit (struct typec_altmode*) ;

__attribute__((used)) static int dp_altmode_activate(struct typec_altmode *alt, int activate)
{
 return activate ? typec_altmode_enter(alt) : typec_altmode_exit(alt);
}
