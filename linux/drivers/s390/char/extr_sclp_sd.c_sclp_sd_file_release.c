
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_sd_file {int data; } ;
struct kobject {int dummy; } ;


 int kfree (struct sclp_sd_file*) ;
 int sclp_sd_data_reset (int *) ;
 struct sclp_sd_file* to_sd_file (struct kobject*) ;

__attribute__((used)) static void sclp_sd_file_release(struct kobject *kobj)
{
 struct sclp_sd_file *sd_file = to_sd_file(kobj);

 sclp_sd_data_reset(&sd_file->data);
 kfree(sd_file);
}
