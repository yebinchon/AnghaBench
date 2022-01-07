
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int sysfs_notify (int *,char*,char*) ;

__attribute__((used)) static void typec_report_identity(struct device *dev)
{
 sysfs_notify(&dev->kobj, "identity", "id_header");
 sysfs_notify(&dev->kobj, "identity", "cert_stat");
 sysfs_notify(&dev->kobj, "identity", "product");
}
