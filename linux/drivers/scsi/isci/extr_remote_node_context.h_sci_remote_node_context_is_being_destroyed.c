
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ current_state_id; } ;
struct sci_remote_node_context {scalar_t__ destination_state; TYPE_1__ sm; } ;


 scalar_t__ RNC_DEST_FINAL ;
 scalar_t__ RNC_DEST_UNSPECIFIED ;
 scalar_t__ SCI_RNC_INITIAL ;

__attribute__((used)) static inline bool sci_remote_node_context_is_being_destroyed(
 struct sci_remote_node_context *sci_rnc)
{
 return (sci_rnc->destination_state == RNC_DEST_FINAL)
  || ((sci_rnc->sm.current_state_id == SCI_RNC_INITIAL)
      && (sci_rnc->destination_state == RNC_DEST_UNSPECIFIED));
}
