
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int host_no; int ql2xexchoffld; int u_ql2xexchoffld; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 scalar_t__ PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,int ,...) ;
 TYPE_1__* shost_priv (int ) ;

__attribute__((used)) static ssize_t
ql2xexchoffld_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 int len = 0;

 len += scnprintf(buf + len, PAGE_SIZE-len,
  "target exchange: new %d : current: %d\n\n",
  vha->u_ql2xexchoffld, vha->ql2xexchoffld);

 len += scnprintf(buf + len, PAGE_SIZE-len,
     "Please (re)set operating mode via \"/sys/class/scsi_host/host%ld/qlini_mode\" to load new setting.\n",
     vha->host_no);

 return len;
}
