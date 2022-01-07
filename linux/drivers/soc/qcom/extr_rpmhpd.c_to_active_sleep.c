
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmhpd {scalar_t__ active_only; } ;



__attribute__((used)) static void to_active_sleep(struct rpmhpd *pd, unsigned int corner,
       unsigned int *active, unsigned int *sleep)
{
 *active = corner;

 if (pd->active_only)
  *sleep = 0;
 else
  *sleep = *active;
}
