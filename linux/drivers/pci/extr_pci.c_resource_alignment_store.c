
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;
typedef size_t ssize_t ;


 size_t ENOMEM ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kstrndup (char const*,size_t,int ) ;
 int resource_alignment_lock ;
 char* resource_alignment_param ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t resource_alignment_store(struct bus_type *bus,
     const char *buf, size_t count)
{
 char *param = kstrndup(buf, count, GFP_KERNEL);

 if (!param)
  return -ENOMEM;

 spin_lock(&resource_alignment_lock);
 kfree(resource_alignment_param);
 resource_alignment_param = param;
 spin_unlock(&resource_alignment_lock);
 return count;
}
