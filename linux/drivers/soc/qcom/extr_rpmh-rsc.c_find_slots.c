
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcs_request {int num_cmds; TYPE_1__* cmds; } ;
struct tcs_group {int num_tcs; int ncpt; int offset; int * cmd_cache; int slots; } ;
struct TYPE_2__ {int addr; } ;


 int ENOMEM ;
 int MAX_TCS_SLOTS ;
 int bitmap_find_next_zero_area (int ,int ,int,int,int ) ;
 int bitmap_set (int ,int,int) ;
 int find_match (struct tcs_group*,TYPE_1__*,int) ;

__attribute__((used)) static int find_slots(struct tcs_group *tcs, const struct tcs_request *msg,
        int *tcs_id, int *cmd_id)
{
 int slot, offset;
 int i = 0;


 slot = find_match(tcs, msg->cmds, msg->num_cmds);
 if (slot >= 0)
  goto copy_data;


 do {
  slot = bitmap_find_next_zero_area(tcs->slots, MAX_TCS_SLOTS,
        i, msg->num_cmds, 0);
  if (slot >= tcs->num_tcs * tcs->ncpt)
   return -ENOMEM;
  i += tcs->ncpt;
 } while (slot + msg->num_cmds - 1 >= i);

copy_data:
 bitmap_set(tcs->slots, slot, msg->num_cmds);

 for (i = 0; i < msg->num_cmds; i++)
  tcs->cmd_cache[slot + i] = msg->cmds[i].addr;

 offset = slot / tcs->ncpt;
 *tcs_id = offset + tcs->offset;
 *cmd_id = slot % tcs->ncpt;

 return 0;
}
