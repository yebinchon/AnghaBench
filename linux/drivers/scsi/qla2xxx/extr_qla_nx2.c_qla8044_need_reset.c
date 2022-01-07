
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct TYPE_2__ {scalar_t__ eeh_busy; } ;
struct qla_hw_data {int portnum; TYPE_1__ flags; } ;


 int QLA8044_CRB_DRV_ACTIVE_INDEX ;
 int QLA8044_CRB_DRV_STATE_INDEX ;
 int qla8044_rd_direct (struct scsi_qla_host*,int ) ;

__attribute__((used)) static inline int
qla8044_need_reset(struct scsi_qla_host *vha)
{
 uint32_t drv_state, drv_active;
 int rval;
 struct qla_hw_data *ha = vha->hw;

 drv_active = qla8044_rd_direct(vha, QLA8044_CRB_DRV_ACTIVE_INDEX);
 drv_state = qla8044_rd_direct(vha, QLA8044_CRB_DRV_STATE_INDEX);

 rval = drv_state & (1 << ha->portnum);

 if (ha->flags.eeh_busy && drv_active)
  rval = 1;
 return rval;
}
