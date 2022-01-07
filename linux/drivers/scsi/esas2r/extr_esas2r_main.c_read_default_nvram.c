
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct esas2r_sas_nvram {int dummy; } ;
struct esas2r_adapter {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 struct esas2r_adapter* esas2r_adapter_from_kobj (struct kobject*) ;
 int esas2r_nvram_get_defaults (struct esas2r_adapter*,struct esas2r_sas_nvram*) ;

__attribute__((used)) static ssize_t read_default_nvram(struct file *file, struct kobject *kobj,
      struct bin_attribute *attr,
      char *buf, loff_t off, size_t count)
{
 struct esas2r_adapter *a = esas2r_adapter_from_kobj(kobj);

 esas2r_nvram_get_defaults(a, (struct esas2r_sas_nvram *)buf);

 return sizeof(struct esas2r_sas_nvram);
}
