
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_remote_node_context {scalar_t__ destination_state; void* user_cookie; int * user_callback; } ;
typedef int * scics_sds_remote_node_context_callback ;
typedef enum sci_remote_node_context_destination_state { ____Placeholder_sci_remote_node_context_destination_state } sci_remote_node_context_destination_state ;


 scalar_t__ RNC_DEST_FINAL ;

__attribute__((used)) static void sci_remote_node_context_setup_to_resume(
 struct sci_remote_node_context *sci_rnc,
 scics_sds_remote_node_context_callback callback,
 void *callback_parameter,
 enum sci_remote_node_context_destination_state dest_param)
{
 if (sci_rnc->destination_state != RNC_DEST_FINAL) {
  sci_rnc->destination_state = dest_param;
  if (callback != ((void*)0)) {
   sci_rnc->user_callback = callback;
   sci_rnc->user_cookie = callback_parameter;
  }
 }
}
