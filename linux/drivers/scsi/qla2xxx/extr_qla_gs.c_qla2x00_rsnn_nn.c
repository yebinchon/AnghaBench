
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct qla_hw_data {int dummy; } ;
struct TYPE_5__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 scalar_t__ IS_QLA2100 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA2200 (struct qla_hw_data*) ;
 int QLA_SUCCESS ;
 int ql_dbg (int ,TYPE_1__*,int,char*) ;
 int ql_dbg_disc ;
 int qla_async_rsnn_nn (TYPE_1__*) ;

int
qla2x00_rsnn_nn(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;

 if (IS_QLA2100(ha) || IS_QLA2200(ha)) {
  ql_dbg(ql_dbg_disc, vha, 0x2050,
      "RSNN_ID call unsupported on ISP2100/ISP2200.\n");
  return (QLA_SUCCESS);
 }

 return qla_async_rsnn_nn(vha);
}
