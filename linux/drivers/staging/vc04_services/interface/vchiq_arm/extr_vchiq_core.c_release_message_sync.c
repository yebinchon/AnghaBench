
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vchiq_state {TYPE_1__* remote; } ;
struct vchiq_header {int msgid; } ;
struct TYPE_2__ {int sync_release; } ;


 int VCHIQ_MSGID_PADDING ;
 int remote_event_signal (int *) ;

__attribute__((used)) static void
release_message_sync(struct vchiq_state *state, struct vchiq_header *header)
{
 header->msgid = VCHIQ_MSGID_PADDING;
 remote_event_signal(&state->remote->sync_release);
}
