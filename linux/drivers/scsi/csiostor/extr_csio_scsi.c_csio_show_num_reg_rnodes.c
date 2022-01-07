
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct csio_lnode {int num_reg_rnodes; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 struct csio_lnode* shost_priv (int ) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t
csio_show_num_reg_rnodes(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct csio_lnode *ln = shost_priv(class_to_shost(dev));

 return snprintf(buf, PAGE_SIZE, "%d\n", ln->num_reg_rnodes);
}
