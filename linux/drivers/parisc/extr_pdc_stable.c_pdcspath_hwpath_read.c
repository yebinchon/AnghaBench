
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_path {int* bc; scalar_t__ mod; } ;
struct pdcspath_entry {short ready; int rw_lock; struct device_path devpath; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENODATA ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sprintf (char*,char*,unsigned char) ;

__attribute__((used)) static ssize_t
pdcspath_hwpath_read(struct pdcspath_entry *entry, char *buf)
{
 char *out = buf;
 struct device_path *devpath;
 short i;

 if (!entry || !buf)
  return -EINVAL;

 read_lock(&entry->rw_lock);
 devpath = &entry->devpath;
 i = entry->ready;
 read_unlock(&entry->rw_lock);

 if (!i)
  return -ENODATA;

 for (i = 0; i < 6; i++) {
  if (devpath->bc[i] >= 128)
   continue;
  out += sprintf(out, "%u/", (unsigned char)devpath->bc[i]);
 }
 out += sprintf(out, "%u\n", (unsigned char)devpath->mod);

 return out - buf;
}
