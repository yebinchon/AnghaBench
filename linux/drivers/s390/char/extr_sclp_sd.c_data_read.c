
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* data; size_t dsize_bytes; } ;
struct sclp_sd_file {int data_mutex; TYPE_1__ data; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef size_t ssize_t ;
typedef size_t loff_t ;


 int memcpy (char*,char*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sclp_sd_file* to_sd_file (struct kobject*) ;

__attribute__((used)) static ssize_t data_read(struct file *file, struct kobject *kobj,
    struct bin_attribute *attr, char *buffer,
    loff_t off, size_t size)
{
 struct sclp_sd_file *sd_file = to_sd_file(kobj);
 size_t data_size;
 char *data;

 mutex_lock(&sd_file->data_mutex);

 data = sd_file->data.data;
 data_size = sd_file->data.dsize_bytes;
 if (!data || off >= data_size) {
  size = 0;
 } else {
  if (off + size > data_size)
   size = data_size - off;
  memcpy(buffer, data + off, size);
 }

 mutex_unlock(&sd_file->data_mutex);

 return size;
}
