
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_device {scalar_t__ ref_count; int iss_mutex; } ;


 scalar_t__ iss_enable_clocks (struct iss_device*) ;
 int iss_enable_interrupts (struct iss_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct iss_device *omap4iss_get(struct iss_device *iss)
{
 struct iss_device *__iss = iss;

 if (!iss)
  return ((void*)0);

 mutex_lock(&iss->iss_mutex);
 if (iss->ref_count > 0)
  goto out;

 if (iss_enable_clocks(iss) < 0) {
  __iss = ((void*)0);
  goto out;
 }

 iss_enable_interrupts(iss);

out:
 if (__iss)
  iss->ref_count++;
 mutex_unlock(&iss->iss_mutex);

 return __iss;
}
