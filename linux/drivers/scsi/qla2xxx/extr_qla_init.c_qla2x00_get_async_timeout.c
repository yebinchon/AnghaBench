
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int r_a_tov; unsigned long login_timeout; } ;


 int FX00_DEF_RATOV ;
 int IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 scalar_t__ IS_QLAFX00 (struct qla_hw_data*) ;

unsigned long
qla2x00_get_async_timeout(struct scsi_qla_host *vha)
{
 unsigned long tmo;
 struct qla_hw_data *ha = vha->hw;


 tmo = ha->r_a_tov / 10 * 2;
 if (IS_QLAFX00(ha)) {
  tmo = FX00_DEF_RATOV * 2;
 } else if (!IS_FWI2_CAPABLE(ha)) {




  tmo = ha->login_timeout;
 }
 return tmo;
}
