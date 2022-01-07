
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bc_state {int dummy; } ;


 int gigaset_bchannel_up (struct bc_state*) ;

__attribute__((used)) static int gigaset_init_bchannel(struct bc_state *bcs)
{

 gigaset_bchannel_up(bcs);
 return 0;
}
