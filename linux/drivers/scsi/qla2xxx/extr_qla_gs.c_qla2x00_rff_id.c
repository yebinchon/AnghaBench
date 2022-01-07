
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct qla_hw_data {int dummy; } ;
struct TYPE_6__ {int d_id; struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int FC4_TYPE_FCP_SCSI ;
 scalar_t__ IS_QLA2100 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA2200 (struct qla_hw_data*) ;
 int QLA_SUCCESS ;
 int ql_dbg (int ,TYPE_1__*,int,char*) ;
 int ql_dbg_disc ;
 int qla_async_rffid (TYPE_1__*,int *,int ,int ) ;
 int qlt_rff_id (TYPE_1__*) ;

int
qla2x00_rff_id(scsi_qla_host_t *vha, u8 type)
{
 struct qla_hw_data *ha = vha->hw;

 if (IS_QLA2100(ha) || IS_QLA2200(ha)) {
  ql_dbg(ql_dbg_disc, vha, 0x2046,
      "RFF_ID call not supported on ISP2100/ISP2200.\n");
  return (QLA_SUCCESS);
 }

 return qla_async_rffid(vha, &vha->d_id, qlt_rff_id(vha),
     FC4_TYPE_FCP_SCSI);
}
