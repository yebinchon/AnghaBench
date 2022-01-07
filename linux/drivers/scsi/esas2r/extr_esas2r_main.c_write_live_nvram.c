
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct esas2r_sas_nvram {int dummy; } ;
struct esas2r_request {int dummy; } ;
struct esas2r_adapter {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EFAULT ;
 int ENOMEM ;
 struct esas2r_adapter* esas2r_adapter_from_kobj (struct kobject*) ;
 struct esas2r_request* esas2r_alloc_request (struct esas2r_adapter*) ;
 int esas2r_free_request (struct esas2r_adapter*,struct esas2r_request*) ;
 scalar_t__ esas2r_write_params (struct esas2r_adapter*,struct esas2r_request*,struct esas2r_sas_nvram*) ;

__attribute__((used)) static ssize_t write_live_nvram(struct file *file, struct kobject *kobj,
    struct bin_attribute *attr,
    char *buf, loff_t off, size_t count)
{
 struct esas2r_adapter *a = esas2r_adapter_from_kobj(kobj);
 struct esas2r_request *rq;
 int result = -EFAULT;

 rq = esas2r_alloc_request(a);
 if (rq == ((void*)0))
  return -ENOMEM;

 if (esas2r_write_params(a, rq, (struct esas2r_sas_nvram *)buf))
  result = count;

 esas2r_free_request(a, rq);

 return result;
}
