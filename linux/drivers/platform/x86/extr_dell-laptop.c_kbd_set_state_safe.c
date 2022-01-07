
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbd_state {int dummy; } ;


 int kbd_set_state (struct kbd_state*) ;
 int pr_err (char*) ;

__attribute__((used)) static int kbd_set_state_safe(struct kbd_state *state, struct kbd_state *old)
{
 int ret;

 ret = kbd_set_state(state);
 if (ret == 0)
  return 0;







 if (kbd_set_state(old))
  pr_err("Setting old previous keyboard state failed\n");

 return ret;
}
