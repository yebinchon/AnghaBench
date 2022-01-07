
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_device {scalar_t__ ref_count; int iss_mutex; int crashed; } ;


 int WARN_ON (int) ;
 int iss_disable_clocks (struct iss_device*) ;
 int iss_disable_interrupts (struct iss_device*) ;
 int iss_reset (struct iss_device*) ;
 int media_entity_enum_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void omap4iss_put(struct iss_device *iss)
{
 if (!iss)
  return;

 mutex_lock(&iss->iss_mutex);
 WARN_ON(iss->ref_count == 0);
 if (--iss->ref_count == 0) {
  iss_disable_interrupts(iss);





  if (!media_entity_enum_empty(&iss->crashed))
   iss_reset(iss);
  iss_disable_clocks(iss);
 }
 mutex_unlock(&iss->iss_mutex);
}
