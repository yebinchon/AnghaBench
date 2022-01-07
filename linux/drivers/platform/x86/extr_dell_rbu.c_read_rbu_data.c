
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int lock; } ;


 int image_type ;
 int pr_debug (char*) ;
 TYPE_1__ rbu_data ;
 int read_packet_data (char*,int ,size_t) ;
 int read_rbu_mono_data (char*,int ,size_t) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static ssize_t read_rbu_data(struct file *filp, struct kobject *kobj,
        struct bin_attribute *bin_attr,
        char *buffer, loff_t pos, size_t count)
{
 ssize_t ret_count = 0;

 spin_lock(&rbu_data.lock);

 if (!strcmp(image_type, "mono"))
  ret_count = read_rbu_mono_data(buffer, pos, count);
 else if (!strcmp(image_type, "packet"))
  ret_count = read_packet_data(buffer, pos, count);
 else
  pr_debug("read_rbu_data: invalid image type specified\n");

 spin_unlock(&rbu_data.lock);
 return ret_count;
}
