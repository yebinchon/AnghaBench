
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct esas2r_adapter {int * local_atto_ioctl; } ;
struct bin_attribute {int dummy; } ;
struct atto_ioctl {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int ENOMEM ;
 int ESAS2R_LOG_WARN ;
 int GFP_KERNEL ;
 struct esas2r_adapter* esas2r_adapter_from_kobj (struct kobject*) ;
 int esas2r_log (int ,char*,int) ;
 int * kmalloc (int,int ) ;
 int memcpy (int *,char*,int) ;
 int memset (int *,int ,int) ;
 int min (int,size_t) ;

__attribute__((used)) static ssize_t write_hw(struct file *file, struct kobject *kobj,
   struct bin_attribute *attr,
   char *buf, loff_t off, size_t count)
{
 struct esas2r_adapter *a = esas2r_adapter_from_kobj(kobj);
 int length = min(sizeof(struct atto_ioctl), count);

 if (!a->local_atto_ioctl) {
  a->local_atto_ioctl = kmalloc(sizeof(struct atto_ioctl),
           GFP_KERNEL);
  if (a->local_atto_ioctl == ((void*)0)) {
   esas2r_log(ESAS2R_LOG_WARN,
       "write_hw kzalloc failed for %zu bytes",
       sizeof(struct atto_ioctl));
   return -ENOMEM;
  }
 }

 memset(a->local_atto_ioctl, 0, sizeof(struct atto_ioctl));
 memcpy(a->local_atto_ioctl, buf, length);

 return length;
}
