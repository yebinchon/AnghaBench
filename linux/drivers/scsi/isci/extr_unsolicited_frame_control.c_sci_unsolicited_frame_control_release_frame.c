
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_6__ {TYPE_2__* array; } ;
struct TYPE_4__ {int * array; } ;
struct sci_unsolicited_frame_control {int get; TYPE_3__ buffers; TYPE_1__ address_table; } ;
struct TYPE_5__ {scalar_t__ state; } ;


 int BUG_ON (int) ;
 int ENABLE_BIT ;
 int SCU_MAX_UNSOLICITED_FRAMES ;
 size_t SCU_UFQGP_GEN_BIT (int ) ;
 scalar_t__ UNSOLICITED_FRAME_EMPTY ;
 scalar_t__ UNSOLICITED_FRAME_RELEASED ;
 scalar_t__ lower_32_bits (int ) ;
 scalar_t__ upper_32_bits (int ) ;

bool sci_unsolicited_frame_control_release_frame(struct sci_unsolicited_frame_control *uf_control,
       u32 frame_index)
{
 u32 frame_get;
 u32 frame_cycle;

 frame_get = uf_control->get & (SCU_MAX_UNSOLICITED_FRAMES - 1);
 frame_cycle = uf_control->get & SCU_MAX_UNSOLICITED_FRAMES;






 while (lower_32_bits(uf_control->address_table.array[frame_get]) == 0 &&
        upper_32_bits(uf_control->address_table.array[frame_get]) == 0 &&
        frame_get < SCU_MAX_UNSOLICITED_FRAMES)
  frame_get++;





 BUG_ON(frame_get >= SCU_MAX_UNSOLICITED_FRAMES);
 if (frame_index >= SCU_MAX_UNSOLICITED_FRAMES)
  return 0;

 uf_control->buffers.array[frame_index].state = UNSOLICITED_FRAME_RELEASED;

 if (frame_get != frame_index) {




  return 0;
 }





 while (uf_control->buffers.array[frame_get].state == UNSOLICITED_FRAME_RELEASED) {
  uf_control->buffers.array[frame_get].state = UNSOLICITED_FRAME_EMPTY;

  if (frame_get+1 == SCU_MAX_UNSOLICITED_FRAMES-1) {
   frame_cycle ^= SCU_MAX_UNSOLICITED_FRAMES;
   frame_get = 0;
  } else
   frame_get++;
 }

 uf_control->get = SCU_UFQGP_GEN_BIT(ENABLE_BIT) | frame_cycle | frame_get;

 return 1;
}
