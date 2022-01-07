
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct tdif_task_context {int flags0; int flags1; void* app_tag_mask; void* initial_ref_tag; void* partial_crc_value_a; void* partial_crc_value_b; void* app_tag_value; } ;
struct scsi_dif_task_params {int application_tag; int application_tag_mask; int host_guard_type; int protection_type; int dif_block_size_log; int ref_tag_mask; int ignore_app_tag; scalar_t__ forward_ref_tag_with_mask; scalar_t__ forward_app_tag_with_mask; scalar_t__ dif_on_host; scalar_t__ validate_ref_tag; scalar_t__ validate_app_tag; scalar_t__ validate_guard; scalar_t__ keep_ref_tag_const; scalar_t__ initial_ref_tag_is_valid; int initial_ref_tag; scalar_t__ dif_on_network; scalar_t__ forward_ref_tag; scalar_t__ forward_app_tag; scalar_t__ forward_guard; scalar_t__ tx_dif_conn_err_en; scalar_t__ crc_seed; } ;
struct rdif_task_context {int state; int flags1; int flags0; void* app_tag_mask; void* initial_ref_tag; void* partial_crc_value; void* app_tag_value; } ;
typedef enum iscsi_task_type { ____Placeholder_iscsi_task_type } iscsi_task_type ;


 int ISCSI_TASK_TYPE_INITIATOR_READ ;
 int ISCSI_TASK_TYPE_INITIATOR_WRITE ;
 int ISCSI_TASK_TYPE_TARGET_READ ;
 int ISCSI_TASK_TYPE_TARGET_WRITE ;
 int RDIF_TASK_CONTEXT_CRC_SEED ;
 int RDIF_TASK_CONTEXT_FORWARD_APP_TAG ;
 int RDIF_TASK_CONTEXT_FORWARD_APP_TAG_WITH_MASK ;
 int RDIF_TASK_CONTEXT_FORWARD_GUARD ;
 int RDIF_TASK_CONTEXT_FORWARD_REF_TAG ;
 int RDIF_TASK_CONTEXT_FORWARD_REF_TAG_WITH_MASK ;
 int RDIF_TASK_CONTEXT_HOST_GUARD_TYPE ;
 int RDIF_TASK_CONTEXT_HOST_INTERFACE ;
 int RDIF_TASK_CONTEXT_IGNORE_APP_TAG ;
 int RDIF_TASK_CONTEXT_INITIAL_REF_TAG_VALID ;
 int RDIF_TASK_CONTEXT_INTERVAL_SIZE ;
 int RDIF_TASK_CONTEXT_KEEP_REF_TAG_CONST ;
 int RDIF_TASK_CONTEXT_NETWORK_INTERFACE ;
 int RDIF_TASK_CONTEXT_PROTECTION_TYPE ;
 int RDIF_TASK_CONTEXT_REF_TAG_MASK ;
 int RDIF_TASK_CONTEXT_VALIDATE_APP_TAG ;
 int RDIF_TASK_CONTEXT_VALIDATE_GUARD ;
 int RDIF_TASK_CONTEXT_VALIDATE_REF_TAG ;
 int SET_FIELD (int ,int ,int) ;
 int TDIF_TASK_CONTEXT_CRC_SEED ;
 int TDIF_TASK_CONTEXT_FORWARD_APP_TAG ;
 int TDIF_TASK_CONTEXT_FORWARD_APP_TAG_WITH_MASK ;
 int TDIF_TASK_CONTEXT_FORWARD_GUARD ;
 int TDIF_TASK_CONTEXT_FORWARD_REF_TAG ;
 int TDIF_TASK_CONTEXT_FORWARD_REF_TAG_WITH_MASK ;
 int TDIF_TASK_CONTEXT_HOST_GUARD_TYPE ;
 int TDIF_TASK_CONTEXT_HOST_INTERFACE ;
 int TDIF_TASK_CONTEXT_IGNORE_APP_TAG ;
 int TDIF_TASK_CONTEXT_INITIAL_REF_TAG_VALID ;
 int TDIF_TASK_CONTEXT_INTERVAL_SIZE ;
 int TDIF_TASK_CONTEXT_KEEP_REF_TAG_CONST ;
 int TDIF_TASK_CONTEXT_NETWORK_INTERFACE ;
 int TDIF_TASK_CONTEXT_PROTECTION_TYPE ;
 int TDIF_TASK_CONTEXT_REF_TAG_MASK ;
 int TDIF_TASK_CONTEXT_SET_ERROR_WITH_EOP ;
 int TDIF_TASK_CONTEXT_VALIDATE_APP_TAG ;
 int TDIF_TASK_CONTEXT_VALIDATE_GUARD ;
 int TDIF_TASK_CONTEXT_VALIDATE_REF_TAG ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;

__attribute__((used)) static
void init_rtdif_task_context(struct rdif_task_context *rdif_context,
        struct tdif_task_context *tdif_context,
        struct scsi_dif_task_params *dif_task_params,
        enum iscsi_task_type task_type)
{
 u32 val;

 if (!dif_task_params->dif_on_network || !dif_task_params->dif_on_host)
  return;

 if (task_type == ISCSI_TASK_TYPE_TARGET_WRITE ||
     task_type == ISCSI_TASK_TYPE_INITIATOR_READ) {
  rdif_context->app_tag_value =
      cpu_to_le16(dif_task_params->application_tag);
  rdif_context->partial_crc_value = cpu_to_le16(0xffff);
  val = cpu_to_le32(dif_task_params->initial_ref_tag);
  rdif_context->initial_ref_tag = val;
  rdif_context->app_tag_mask =
        cpu_to_le16(dif_task_params->application_tag_mask);
  SET_FIELD(rdif_context->flags0, RDIF_TASK_CONTEXT_CRC_SEED,
     dif_task_params->crc_seed ? 1 : 0);
  SET_FIELD(rdif_context->flags0,
     RDIF_TASK_CONTEXT_HOST_GUARD_TYPE,
     dif_task_params->host_guard_type);
  SET_FIELD(rdif_context->flags0,
     RDIF_TASK_CONTEXT_PROTECTION_TYPE,
     dif_task_params->protection_type);
  SET_FIELD(rdif_context->flags0,
     RDIF_TASK_CONTEXT_INITIAL_REF_TAG_VALID, 1);
  SET_FIELD(rdif_context->flags0,
     RDIF_TASK_CONTEXT_KEEP_REF_TAG_CONST,
     dif_task_params->keep_ref_tag_const ? 1 : 0);
  SET_FIELD(rdif_context->flags1,
     RDIF_TASK_CONTEXT_VALIDATE_APP_TAG,
     (dif_task_params->validate_app_tag &&
     dif_task_params->dif_on_network) ? 1 : 0);
  SET_FIELD(rdif_context->flags1,
     RDIF_TASK_CONTEXT_VALIDATE_GUARD,
     (dif_task_params->validate_guard &&
     dif_task_params->dif_on_network) ? 1 : 0);
  SET_FIELD(rdif_context->flags1,
     RDIF_TASK_CONTEXT_VALIDATE_REF_TAG,
     (dif_task_params->validate_ref_tag &&
     dif_task_params->dif_on_network) ? 1 : 0);
  SET_FIELD(rdif_context->flags1,
     RDIF_TASK_CONTEXT_HOST_INTERFACE,
     dif_task_params->dif_on_host ? 1 : 0);
  SET_FIELD(rdif_context->flags1,
     RDIF_TASK_CONTEXT_NETWORK_INTERFACE,
     dif_task_params->dif_on_network ? 1 : 0);
  SET_FIELD(rdif_context->flags1,
     RDIF_TASK_CONTEXT_FORWARD_GUARD,
     dif_task_params->forward_guard ? 1 : 0);
  SET_FIELD(rdif_context->flags1,
     RDIF_TASK_CONTEXT_FORWARD_APP_TAG,
     dif_task_params->forward_app_tag ? 1 : 0);
  SET_FIELD(rdif_context->flags1,
     RDIF_TASK_CONTEXT_FORWARD_REF_TAG,
     dif_task_params->forward_ref_tag ? 1 : 0);
  SET_FIELD(rdif_context->flags1,
     RDIF_TASK_CONTEXT_FORWARD_APP_TAG_WITH_MASK,
     dif_task_params->forward_app_tag_with_mask ? 1 : 0);
  SET_FIELD(rdif_context->flags1,
     RDIF_TASK_CONTEXT_FORWARD_REF_TAG_WITH_MASK,
     dif_task_params->forward_ref_tag_with_mask ? 1 : 0);
  SET_FIELD(rdif_context->flags1,
     RDIF_TASK_CONTEXT_INTERVAL_SIZE,
     dif_task_params->dif_block_size_log - 9);
  SET_FIELD(rdif_context->state,
     RDIF_TASK_CONTEXT_REF_TAG_MASK,
     dif_task_params->ref_tag_mask);
  SET_FIELD(rdif_context->state, RDIF_TASK_CONTEXT_IGNORE_APP_TAG,
     dif_task_params->ignore_app_tag);
 }

 if (task_type == ISCSI_TASK_TYPE_TARGET_READ ||
     task_type == ISCSI_TASK_TYPE_INITIATOR_WRITE) {
  tdif_context->app_tag_value =
      cpu_to_le16(dif_task_params->application_tag);
  tdif_context->partial_crc_value_b =
         cpu_to_le16(dif_task_params->crc_seed ? 0xffff : 0x0000);
  tdif_context->partial_crc_value_a =
         cpu_to_le16(dif_task_params->crc_seed ? 0xffff : 0x0000);
  SET_FIELD(tdif_context->flags0, TDIF_TASK_CONTEXT_CRC_SEED,
     dif_task_params->crc_seed ? 1 : 0);

  SET_FIELD(tdif_context->flags0,
     TDIF_TASK_CONTEXT_SET_ERROR_WITH_EOP,
     dif_task_params->tx_dif_conn_err_en ? 1 : 0);
  SET_FIELD(tdif_context->flags1, TDIF_TASK_CONTEXT_FORWARD_GUARD,
     dif_task_params->forward_guard ? 1 : 0);
  SET_FIELD(tdif_context->flags1,
     TDIF_TASK_CONTEXT_FORWARD_APP_TAG,
     dif_task_params->forward_app_tag ? 1 : 0);
  SET_FIELD(tdif_context->flags1,
     TDIF_TASK_CONTEXT_FORWARD_REF_TAG,
     dif_task_params->forward_ref_tag ? 1 : 0);
  SET_FIELD(tdif_context->flags1, TDIF_TASK_CONTEXT_INTERVAL_SIZE,
     dif_task_params->dif_block_size_log - 9);
  SET_FIELD(tdif_context->flags1,
     TDIF_TASK_CONTEXT_HOST_INTERFACE,
     dif_task_params->dif_on_host ? 1 : 0);
  SET_FIELD(tdif_context->flags1,
     TDIF_TASK_CONTEXT_NETWORK_INTERFACE,
     dif_task_params->dif_on_network ? 1 : 0);
  val = cpu_to_le32(dif_task_params->initial_ref_tag);
  tdif_context->initial_ref_tag = val;
  tdif_context->app_tag_mask =
        cpu_to_le16(dif_task_params->application_tag_mask);
  SET_FIELD(tdif_context->flags0,
     TDIF_TASK_CONTEXT_HOST_GUARD_TYPE,
     dif_task_params->host_guard_type);
  SET_FIELD(tdif_context->flags0,
     TDIF_TASK_CONTEXT_PROTECTION_TYPE,
     dif_task_params->protection_type);
  SET_FIELD(tdif_context->flags0,
     TDIF_TASK_CONTEXT_INITIAL_REF_TAG_VALID,
     dif_task_params->initial_ref_tag_is_valid ? 1 : 0);
  SET_FIELD(tdif_context->flags0,
     TDIF_TASK_CONTEXT_KEEP_REF_TAG_CONST,
     dif_task_params->keep_ref_tag_const ? 1 : 0);
  SET_FIELD(tdif_context->flags1,
     TDIF_TASK_CONTEXT_VALIDATE_GUARD,
     (dif_task_params->validate_guard &&
      dif_task_params->dif_on_host) ? 1 : 0);
  SET_FIELD(tdif_context->flags1,
     TDIF_TASK_CONTEXT_VALIDATE_APP_TAG,
     (dif_task_params->validate_app_tag &&
     dif_task_params->dif_on_host) ? 1 : 0);
  SET_FIELD(tdif_context->flags1,
     TDIF_TASK_CONTEXT_VALIDATE_REF_TAG,
     (dif_task_params->validate_ref_tag &&
      dif_task_params->dif_on_host) ? 1 : 0);
  SET_FIELD(tdif_context->flags1,
     TDIF_TASK_CONTEXT_FORWARD_APP_TAG_WITH_MASK,
     dif_task_params->forward_app_tag_with_mask ? 1 : 0);
  SET_FIELD(tdif_context->flags1,
     TDIF_TASK_CONTEXT_FORWARD_REF_TAG_WITH_MASK,
     dif_task_params->forward_ref_tag_with_mask ? 1 : 0);
  SET_FIELD(tdif_context->flags1,
     TDIF_TASK_CONTEXT_REF_TAG_MASK,
     dif_task_params->ref_tag_mask);
  SET_FIELD(tdif_context->flags0,
     TDIF_TASK_CONTEXT_IGNORE_APP_TAG,
     dif_task_params->ignore_app_tag ? 1 : 0);
 }
}
