
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vchiq_state {char* rx_data; unsigned int rx_pos; TYPE_1__* remote; } ;
struct vchiq_slot_info {scalar_t__ release_count; scalar_t__ use_count; } ;
struct vchiq_service {scalar_t__ localport; scalar_t__ sync; struct vchiq_state* state; } ;
struct vchiq_header {int msgid; int size; } ;
struct TYPE_2__ {int slot_last; int slot_sync; int slot_first; } ;


 scalar_t__ SLOT_DATA_FROM_INDEX (struct vchiq_state*,int) ;
 struct vchiq_slot_info* SLOT_INFO_FROM_INDEX (struct vchiq_state*,int) ;
 int VCHIQ_MSGID_CLAIMED ;
 scalar_t__ VCHIQ_MSG_DSTPORT (int) ;
 unsigned int VCHIQ_SLOT_MASK ;
 unsigned int VCHIQ_SLOT_SIZE ;
 int WARN (int,char*) ;
 scalar_t__ calc_stride (int ) ;
 int release_message_sync (struct vchiq_state*,struct vchiq_header*) ;
 int release_slot (struct vchiq_state*,struct vchiq_slot_info*,struct vchiq_header*,int *) ;
 int vchiq_core_log_level ;
 int vchiq_log_error (int ,char*,unsigned int,struct vchiq_header*,int,int,int ) ;
 int vchiq_log_info (int ,char*,struct vchiq_header*) ;

__attribute__((used)) static void
release_service_messages(struct vchiq_service *service)
{
 struct vchiq_state *state = service->state;
 int slot_last = state->remote->slot_last;
 int i;



 if (service->sync) {
  struct vchiq_header *header =
   (struct vchiq_header *)SLOT_DATA_FROM_INDEX(state,
      state->remote->slot_sync);
  if (VCHIQ_MSG_DSTPORT(header->msgid) == service->localport)
   release_message_sync(state, header);

  return;
 }

 for (i = state->remote->slot_first; i <= slot_last; i++) {
  struct vchiq_slot_info *slot_info =
   SLOT_INFO_FROM_INDEX(state, i);
  if (slot_info->release_count != slot_info->use_count) {
   char *data =
    (char *)SLOT_DATA_FROM_INDEX(state, i);
   unsigned int pos, end;

   end = VCHIQ_SLOT_SIZE;
   if (data == state->rx_data)


    end = state->rx_pos & VCHIQ_SLOT_MASK;

   pos = 0;

   while (pos < end) {
    struct vchiq_header *header =
     (struct vchiq_header *)(data + pos);
    int msgid = header->msgid;
    int port = VCHIQ_MSG_DSTPORT(msgid);

    if ((port == service->localport) &&
     (msgid & VCHIQ_MSGID_CLAIMED)) {
     vchiq_log_info(vchiq_core_log_level,
      "  fsi - hdr %pK", header);
     release_slot(state, slot_info, header,
      ((void*)0));
    }
    pos += calc_stride(header->size);
    if (pos > VCHIQ_SLOT_SIZE) {
     vchiq_log_error(vchiq_core_log_level,
      "fsi - pos %x: header %pK, msgid %x, header->msgid %x, header->size %x",
      pos, header, msgid,
      header->msgid, header->size);
     WARN(1, "invalid slot position\n");
    }
   }
  }
 }
}
