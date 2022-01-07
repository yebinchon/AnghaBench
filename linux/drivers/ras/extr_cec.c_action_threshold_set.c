
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ COUNT_MASK ;
 scalar_t__ action_threshold ;

__attribute__((used)) static int action_threshold_set(void *data, u64 val)
{
 *(u64 *)data = val;

 if (val > COUNT_MASK)
  val = COUNT_MASK;

 action_threshold = val;

 return 0;
}
