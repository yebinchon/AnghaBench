
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxlflash_cfg {struct afu* afu; } ;
struct afu {size_t hwq_mode; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 int * hwq_mode_name ;
 int scnprintf (char*,int ,char*,int ) ;
 struct cxlflash_cfg* shost_priv (int ) ;

__attribute__((used)) static ssize_t hwq_mode_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct cxlflash_cfg *cfg = shost_priv(class_to_shost(dev));
 struct afu *afu = cfg->afu;

 return scnprintf(buf, PAGE_SIZE, "%s\n", hwq_mode_name[afu->hwq_mode]);
}
