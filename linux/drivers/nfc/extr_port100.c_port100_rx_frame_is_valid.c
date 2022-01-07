
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct port100_frame {scalar_t__ start_frame; scalar_t__ extended_frame; scalar_t__ datalen_checksum; int datalen; int data; } ;


 scalar_t__ PORT100_FRAME_CHECKSUM (struct port100_frame*) ;
 int PORT100_FRAME_EXT ;
 int PORT100_FRAME_SOF ;
 scalar_t__ cpu_to_be16 (int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ port100_checksum (int ) ;
 scalar_t__ port100_data_checksum (int ,int ) ;

__attribute__((used)) static bool port100_rx_frame_is_valid(void *_frame)
{
 u8 checksum;
 struct port100_frame *frame = _frame;

 if (frame->start_frame != cpu_to_be16(PORT100_FRAME_SOF) ||
     frame->extended_frame != cpu_to_be16(PORT100_FRAME_EXT))
  return 0;

 checksum = port100_checksum(le16_to_cpu(frame->datalen));
 if (checksum != frame->datalen_checksum)
  return 0;

 checksum = port100_data_checksum(frame->data,
      le16_to_cpu(frame->datalen));
 if (checksum != PORT100_FRAME_CHECKSUM(frame))
  return 0;

 return 1;
}
