
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 struct snic* shost_priv (int ) ;
 size_t snic_get_state (struct snic*) ;
 char** snic_state_str ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t
snic_show_state(struct device *dev,
  struct device_attribute *attr,
  char *buf)
{
 struct snic *snic = shost_priv(class_to_shost(dev));

 return snprintf(buf, PAGE_SIZE, "%s\n",
   snic_state_str[snic_get_state(snic)]);
}
