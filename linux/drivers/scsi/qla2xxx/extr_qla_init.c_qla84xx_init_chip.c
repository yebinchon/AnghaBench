
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct qla_hw_data {TYPE_1__* cs84xx; } ;
struct TYPE_6__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_5__ {int fw_update_mutex; } ;


 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qla84xx_verify_chip (TYPE_2__*,scalar_t__*) ;

__attribute__((used)) static int
qla84xx_init_chip(scsi_qla_host_t *vha)
{
 int rval;
 uint16_t status[2];
 struct qla_hw_data *ha = vha->hw;

 mutex_lock(&ha->cs84xx->fw_update_mutex);

 rval = qla84xx_verify_chip(vha, status);

 mutex_unlock(&ha->cs84xx->fw_update_mutex);

 return rval != QLA_SUCCESS || status[0] ? QLA_FUNCTION_FAILED :
     QLA_SUCCESS;
}
