
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pn533_std_frame {scalar_t__ start_frame; scalar_t__ datalen; int datalen_checksum; } ;


 int PN533_STD_FRAME_SOF ;
 scalar_t__ cpu_to_be16 (int ) ;

bool pn533_rx_frame_is_ack(void *_frame)
{
 struct pn533_std_frame *frame = _frame;

 if (frame->start_frame != cpu_to_be16(PN533_STD_FRAME_SOF))
  return 0;

 if (frame->datalen != 0 || frame->datalen_checksum != 0xFF)
  return 0;

 return 1;
}
