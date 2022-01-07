
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_8__ {TYPE_2__* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
typedef int pci_info ;
struct TYPE_7__ {TYPE_1__* isp_ops; } ;
struct TYPE_6__ {int (* pci_info_str ) (TYPE_3__*,char*,int) ;} ;


 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;
 TYPE_3__* shost_priv (int ) ;
 int stub1 (TYPE_3__*,char*,int) ;

__attribute__((used)) static ssize_t
qla2x00_pci_info_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 char pci_info[30];

 return scnprintf(buf, PAGE_SIZE, "%s\n",
    vha->hw->isp_ops->pci_info_str(vha, pci_info,
       sizeof(pci_info)));
}
