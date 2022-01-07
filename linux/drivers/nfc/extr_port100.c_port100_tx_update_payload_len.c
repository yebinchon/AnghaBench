
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port100_frame {int datalen; } ;


 int cpu_to_le16 (scalar_t__) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static void port100_tx_update_payload_len(void *_frame, int len)
{
 struct port100_frame *frame = _frame;

 frame->datalen = cpu_to_le16(le16_to_cpu(frame->datalen) + len);
}
