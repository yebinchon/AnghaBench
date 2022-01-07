
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int count; } ;
struct TYPE_6__ {TYPE_1__ unusable; } ;
struct qla_hw_data {TYPE_2__ pool; int dif_bundle_dma_allocs; int dif_bundle_kallocs; int dif_bundle_writes; int dif_bundle_reads; int dif_bundle_crossed_pages; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;


 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 int scnprintf (char*,int ,char*,int ,int ,int ,int ,int ,int ) ;
 TYPE_3__* shost_priv (int ) ;

__attribute__((used)) static ssize_t
qla2x00_dif_bundle_statistics_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 struct qla_hw_data *ha = vha->hw;

 return scnprintf(buf, PAGE_SIZE,
     "cross=%llu read=%llu write=%llu kalloc=%llu dma_alloc=%llu unusable=%u\n",
     ha->dif_bundle_crossed_pages, ha->dif_bundle_reads,
     ha->dif_bundle_writes, ha->dif_bundle_kallocs,
     ha->dif_bundle_dma_allocs, ha->pool.unusable.count);
}
