
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;
typedef size_t ssize_t ;


 int PAGE_SIZE ;
 int resource_alignment_lock ;
 char* resource_alignment_param ;
 size_t snprintf (char*,int,char*,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t resource_alignment_show(struct bus_type *bus, char *buf)
{
 size_t count = 0;

 spin_lock(&resource_alignment_lock);
 if (resource_alignment_param)
  count = snprintf(buf, PAGE_SIZE, "%s", resource_alignment_param);
 spin_unlock(&resource_alignment_lock);






 if (count >= 2 && buf[count - 2] != '\n' && count < PAGE_SIZE - 1) {
  buf[count - 1] = '\n';
  buf[count++] = 0;
 }

 return count;
}
