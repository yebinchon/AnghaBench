
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int gigaset_set_modem_ctrl(struct cardstate *cs, unsigned old_state,
      unsigned new_state)
{
 return -EINVAL;
}
