
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct scsi_qla_host {TYPE_2__* reg; TYPE_1__* qla4_82xx_reg; } ;
struct TYPE_4__ {int ctrl_status; } ;
struct TYPE_3__ {int host_status; } ;


 scalar_t__ QL4_ISP_REG_DISCONNECT ;
 int QLA8XXX_PEG_ALIVE_COUNTER ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 scalar_t__ is_qla8022 (struct scsi_qla_host*) ;
 scalar_t__ is_qla8032 (struct scsi_qla_host*) ;
 scalar_t__ is_qla8042 (struct scsi_qla_host*) ;
 scalar_t__ qla4_8xxx_rd_direct (struct scsi_qla_host*,int ) ;
 scalar_t__ readl (int *) ;
 scalar_t__ readw (int *) ;

__attribute__((used)) static int qla4xxx_isp_check_reg(struct scsi_qla_host *ha)
{
 u32 reg_val = 0;
 int rval = QLA_SUCCESS;

 if (is_qla8022(ha))
  reg_val = readl(&ha->qla4_82xx_reg->host_status);
 else if (is_qla8032(ha) || is_qla8042(ha))
  reg_val = qla4_8xxx_rd_direct(ha, QLA8XXX_PEG_ALIVE_COUNTER);
 else
  reg_val = readw(&ha->reg->ctrl_status);

 if (reg_val == QL4_ISP_REG_DISCONNECT)
  rval = QLA_ERROR;

 return rval;
}
