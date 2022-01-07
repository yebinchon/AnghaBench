
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int log_level; } ;
struct csio_lnode {TYPE_1__ params; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 struct csio_lnode* shost_priv (int ) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t
csio_show_dbg_level(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct csio_lnode *ln = shost_priv(class_to_shost(dev));

 return snprintf(buf, PAGE_SIZE, "%x\n", ln->params.log_level);
}
