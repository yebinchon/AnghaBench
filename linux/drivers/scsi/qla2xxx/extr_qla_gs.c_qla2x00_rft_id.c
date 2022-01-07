
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct qla_hw_data {int dummy; } ;
struct TYPE_5__ {int d_id; struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 scalar_t__ IS_QLA2100 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA2200 (struct qla_hw_data*) ;
 int qla2x00_sns_rft_id (TYPE_1__*) ;
 int qla_async_rftid (TYPE_1__*,int *) ;

int
qla2x00_rft_id(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;

 if (IS_QLA2100(ha) || IS_QLA2200(ha))
  return qla2x00_sns_rft_id(vha);

 return qla_async_rftid(vha, &vha->d_id);
}
