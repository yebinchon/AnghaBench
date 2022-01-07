
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxlflash_cfg {int dummy; } ;
typedef int ssize_t ;


 int class_to_shost (struct device*) ;
 int cxlflash_show_port_status (int ,struct cxlflash_cfg*,char*) ;
 struct cxlflash_cfg* shost_priv (int ) ;

__attribute__((used)) static ssize_t port0_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct cxlflash_cfg *cfg = shost_priv(class_to_shost(dev));

 return cxlflash_show_port_status(0, cfg, buf);
}
