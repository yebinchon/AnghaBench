
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int suspend_state_t ;
struct regulator_state {int dummy; } ;
struct regulator_dev {TYPE_1__* constraints; } ;
struct TYPE_2__ {struct regulator_state state_disk; struct regulator_state state_mem; struct regulator_state state_standby; } ;






__attribute__((used)) static inline struct regulator_state *
regulator_get_suspend_state(struct regulator_dev *rdev, suspend_state_t state)
{
 if (rdev->constraints == ((void*)0))
  return ((void*)0);

 switch (state) {
 case 128:
  return &rdev->constraints->state_standby;
 case 129:
  return &rdev->constraints->state_mem;
 case 130:
  return &rdev->constraints->state_disk;
 default:
  return ((void*)0);
 }
}
