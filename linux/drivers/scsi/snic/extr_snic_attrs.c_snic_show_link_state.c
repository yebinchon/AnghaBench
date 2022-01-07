
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ xpt_type; } ;
struct snic {scalar_t__ link_status; int vdev; TYPE_1__ config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ SNIC_DAS ;
 int class_to_shost (struct device*) ;
 struct snic* shost_priv (int ) ;
 int snprintf (char*,int ,char*,char*) ;
 scalar_t__ svnic_dev_link_status (int ) ;

__attribute__((used)) static ssize_t
snic_show_link_state(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct snic *snic = shost_priv(class_to_shost(dev));

 if (snic->config.xpt_type == SNIC_DAS)
  snic->link_status = svnic_dev_link_status(snic->vdev);

 return snprintf(buf, PAGE_SIZE, "%s\n",
   (snic->link_status) ? "Link Up" : "Link Down");
}
