
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {TYPE_1__* cs84xx; } ;
struct TYPE_2__ {int kref; } ;


 int __qla84xx_chip_release ;
 int kref_put (int *,int ) ;

void
qla84xx_put_chip(struct scsi_qla_host *vha)
{
 struct qla_hw_data *ha = vha->hw;

 if (ha->cs84xx)
  kref_put(&ha->cs84xx->kref, __qla84xx_chip_release);
}
