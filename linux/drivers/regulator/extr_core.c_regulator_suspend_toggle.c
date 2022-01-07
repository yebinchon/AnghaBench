
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;
struct regulator_state {int enabled; int changeable; } ;
struct regulator_dev {int dummy; } ;


 int DISABLE_IN_SUSPEND ;
 int EINVAL ;
 int ENABLE_IN_SUSPEND ;
 int EPERM ;
 struct regulator_state* regulator_get_suspend_state (struct regulator_dev*,int ) ;

__attribute__((used)) static inline int regulator_suspend_toggle(struct regulator_dev *rdev,
        suspend_state_t state, bool en)
{
 struct regulator_state *rstate;

 rstate = regulator_get_suspend_state(rdev, state);
 if (rstate == ((void*)0))
  return -EINVAL;

 if (!rstate->changeable)
  return -EPERM;

 rstate->enabled = (en) ? ENABLE_IN_SUSPEND : DISABLE_IN_SUSPEND;

 return 0;
}
