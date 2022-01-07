
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int scsi_qla_host_t ;
typedef int mb ;
typedef int fc_port_t ;


 int BIT_0 ;
 int MAILBOX_REGISTER_COUNT ;
 scalar_t__ MBS_COMMAND_ERROR ;
 scalar_t__ MBS_COMMAND_PARAMETER_ERROR ;
 int QLA_SUCCESS ;
 int memset (scalar_t__*,int ,int) ;
 int qla2x00_login_local_device (int *,int *,scalar_t__*,int ) ;

int
qla2x00_local_device_login(scsi_qla_host_t *vha, fc_port_t *fcport)
{
 int rval;
 uint16_t mb[MAILBOX_REGISTER_COUNT];

 memset(mb, 0, sizeof(mb));
 rval = qla2x00_login_local_device(vha, fcport, mb, BIT_0);
 if (rval == QLA_SUCCESS) {

  if (mb[0] == MBS_COMMAND_ERROR)
   rval = 1;
  else if (mb[0] == MBS_COMMAND_PARAMETER_ERROR)

   rval = 3;
 }

 return (rval);
}
