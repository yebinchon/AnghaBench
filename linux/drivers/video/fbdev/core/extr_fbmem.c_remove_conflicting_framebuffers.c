
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct apertures_struct {TYPE_1__* ranges; } ;
struct TYPE_2__ {int size; scalar_t__ base; } ;


 int ENOMEM ;
 struct apertures_struct* alloc_apertures (int) ;
 int do_remove_conflicting_framebuffers (struct apertures_struct*,char const*,int) ;
 int kfree (struct apertures_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int registration_lock ;

int remove_conflicting_framebuffers(struct apertures_struct *a,
        const char *name, bool primary)
{
 bool do_free = 0;

 if (!a) {
  a = alloc_apertures(1);
  if (!a)
   return -ENOMEM;

  a->ranges[0].base = 0;
  a->ranges[0].size = ~0;
  do_free = 1;
 }

 mutex_lock(&registration_lock);
 do_remove_conflicting_framebuffers(a, name, primary);
 mutex_unlock(&registration_lock);

 if (do_free)
  kfree(a);

 return 0;
}
