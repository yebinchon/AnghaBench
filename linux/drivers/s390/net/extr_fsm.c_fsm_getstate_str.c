
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* f; int state; } ;
typedef TYPE_2__ fsm_instance ;
struct TYPE_4__ {int nr_states; char const** state_names; } ;


 int atomic_read (int *) ;

const char *
fsm_getstate_str(fsm_instance *fi)
{
 int st = atomic_read(&fi->state);
 if (st >= fi->f->nr_states)
  return "Invalid";
 return fi->f->state_names[st];
}
