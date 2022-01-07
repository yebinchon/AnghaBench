
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_sd_data {int dsize_bytes; } ;
struct sclp_sd_file {int kobj; int data_mutex; struct sclp_sd_data data; int di; } ;


 int ENOENT ;
 int KOBJ_CHANGE ;
 char* kobject_name (int *) ;
 int kobject_uevent (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,char const*,...) ;
 int sclp_sd_data_reset (struct sclp_sd_data*) ;
 int sclp_sd_store_data (struct sclp_sd_data*,int ) ;

__attribute__((used)) static int sclp_sd_file_update(struct sclp_sd_file *sd_file)
{
 const char *name = kobject_name(&sd_file->kobj);
 struct sclp_sd_data data;
 int rc;

 rc = sclp_sd_store_data(&data, sd_file->di);
 if (rc) {
  if (rc == -ENOENT) {
   pr_info("No data is available for the %s data entity\n",
     name);
  }
  return rc;
 }

 mutex_lock(&sd_file->data_mutex);
 sclp_sd_data_reset(&sd_file->data);
 sd_file->data = data;
 mutex_unlock(&sd_file->data_mutex);

 pr_info("A %zu-byte %s data entity was retrieved\n", data.dsize_bytes,
  name);
 kobject_uevent(&sd_file->kobj, KOBJ_CHANGE);

 return 0;
}
