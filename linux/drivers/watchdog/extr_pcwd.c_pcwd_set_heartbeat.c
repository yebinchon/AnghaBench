
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ VERBOSE ;
 scalar_t__ debug ;
 int heartbeat ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int pcwd_set_heartbeat(int t)
{
 if (t < 2 || t > 7200)
  return -EINVAL;

 heartbeat = t;

 if (debug >= VERBOSE)
  pr_debug("New heartbeat: %d\n", heartbeat);

 return 0;
}
