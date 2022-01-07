
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int u8 ;
struct scsi_qla_host {int dummy; } ;
struct port_database_24xx {int current_login_state; int last_login_state; int* prli_svc_param_word_3; int flags; int * port_id; int * port_name; int * node_name; } ;
struct TYPE_5__ {scalar_t__ rsvd_1; int al_pa; int area; int domain; } ;
struct TYPE_6__ {TYPE_1__ b; } ;
struct TYPE_7__ {int conf_compl_supported; int flags; int supported_classes; int port_type; scalar_t__ fc4f_nvme; TYPE_2__ d_id; int port_name; int node_name; int loop_id; } ;
typedef TYPE_3__ fc_port_t ;


 int BIT_3 ;
 int BIT_4 ;
 int BIT_5 ;
 int BIT_7 ;
 int FCF_CONF_COMP_SUPPORTED ;
 int FCT_INITIATOR ;
 int FCT_NVME_DISCOVERY ;
 int FCT_NVME_INITIATOR ;
 int FCT_NVME_TARGET ;
 int FCT_TARGET ;
 int FC_COS_CLASS2 ;
 int FC_COS_CLASS3 ;
 int FC_NO_LOOP_ID ;
 int PDF_CLASS_2 ;
 int PDS_PRLI_COMPLETE ;
 int QLA_FUNCTION_FAILED ;
 int QLA_NOT_LOGGED_IN ;
 int QLA_SUCCESS ;
 int WWN_SIZE ;
 scalar_t__ memcmp (int ,int *,int) ;
 int memcpy (int ,int *,int ) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int,int,int ) ;
 int ql_dbg_mbx ;

int __qla24xx_parse_gpdb(struct scsi_qla_host *vha, fc_port_t *fcport,
    struct port_database_24xx *pd)
{
 int rval = QLA_SUCCESS;
 uint64_t zero = 0;
 u8 current_login_state, last_login_state;

 if (fcport->fc4f_nvme) {
  current_login_state = pd->current_login_state >> 4;
  last_login_state = pd->last_login_state >> 4;
 } else {
  current_login_state = pd->current_login_state & 0xf;
  last_login_state = pd->last_login_state & 0xf;
 }


 if (current_login_state != PDS_PRLI_COMPLETE) {
  ql_dbg(ql_dbg_mbx, vha, 0x119a,
      "Unable to verify login-state (%x/%x) for loop_id %x.\n",
      current_login_state, last_login_state, fcport->loop_id);
  rval = QLA_FUNCTION_FAILED;
  goto gpd_error_out;
 }

 if (fcport->loop_id == FC_NO_LOOP_ID ||
     (memcmp(fcport->port_name, (uint8_t *)&zero, 8) &&
      memcmp(fcport->port_name, pd->port_name, 8))) {

  rval = QLA_NOT_LOGGED_IN;
  goto gpd_error_out;
 }


 memcpy(fcport->node_name, pd->node_name, WWN_SIZE);
 memcpy(fcport->port_name, pd->port_name, WWN_SIZE);


 fcport->d_id.b.domain = pd->port_id[0];
 fcport->d_id.b.area = pd->port_id[1];
 fcport->d_id.b.al_pa = pd->port_id[2];
 fcport->d_id.b.rsvd_1 = 0;

 if (fcport->fc4f_nvme) {
  fcport->port_type = 0;
  if ((pd->prli_svc_param_word_3[0] & BIT_5) == 0)
   fcport->port_type |= FCT_NVME_INITIATOR;
  if ((pd->prli_svc_param_word_3[0] & BIT_4) == 0)
   fcport->port_type |= FCT_NVME_TARGET;
  if ((pd->prli_svc_param_word_3[0] & BIT_3) == 0)
   fcport->port_type |= FCT_NVME_DISCOVERY;
 } else {

  if ((pd->prli_svc_param_word_3[0] & BIT_4) == 0)
   fcport->port_type = FCT_INITIATOR;
  else
   fcport->port_type = FCT_TARGET;
 }

 fcport->supported_classes = (pd->flags & PDF_CLASS_2) ?
  FC_COS_CLASS2 : FC_COS_CLASS3;

 if (pd->prli_svc_param_word_3[0] & BIT_7) {
  fcport->flags |= FCF_CONF_COMP_SUPPORTED;
  fcport->conf_compl_supported = 1;
 }

gpd_error_out:
 return rval;
}
