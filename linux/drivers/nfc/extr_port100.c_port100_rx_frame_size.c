
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port100_frame {int datalen; } ;


 int PORT100_FRAME_TAIL_LEN ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline int port100_rx_frame_size(void *frame)
{
 struct port100_frame *f = frame;

 return sizeof(struct port100_frame) + le16_to_cpu(f->datalen) +
        PORT100_FRAME_TAIL_LEN;
}
