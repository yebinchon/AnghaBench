
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int default_erl; } ;
struct iscsi_portal_group {TYPE_1__ tpg_attrib; } ;
struct iscsi_node_attrib {int default_erl; int random_r2t_offsets; int random_datain_seq_offsets; int random_datain_pdu_offsets; int nopin_response_timeout; int nopin_timeout; int dataout_timeout_retries; int dataout_timeout; } ;
struct iscsi_node_acl {struct iscsi_node_attrib node_attrib; } ;


 int NA_DATAOUT_TIMEOUT ;
 int NA_DATAOUT_TIMEOUT_RETRIES ;
 int NA_NOPIN_RESPONSE_TIMEOUT ;
 int NA_NOPIN_TIMEOUT ;
 int NA_RANDOM_DATAIN_PDU_OFFSETS ;
 int NA_RANDOM_DATAIN_SEQ_OFFSETS ;
 int NA_RANDOM_R2T_OFFSETS ;

void iscsit_set_default_node_attribues(
 struct iscsi_node_acl *acl,
 struct iscsi_portal_group *tpg)
{
 struct iscsi_node_attrib *a = &acl->node_attrib;

 a->dataout_timeout = NA_DATAOUT_TIMEOUT;
 a->dataout_timeout_retries = NA_DATAOUT_TIMEOUT_RETRIES;
 a->nopin_timeout = NA_NOPIN_TIMEOUT;
 a->nopin_response_timeout = NA_NOPIN_RESPONSE_TIMEOUT;
 a->random_datain_pdu_offsets = NA_RANDOM_DATAIN_PDU_OFFSETS;
 a->random_datain_seq_offsets = NA_RANDOM_DATAIN_SEQ_OFFSETS;
 a->random_r2t_offsets = NA_RANDOM_R2T_OFFSETS;
 a->default_erl = tpg->tpg_attrib.default_erl;
}
