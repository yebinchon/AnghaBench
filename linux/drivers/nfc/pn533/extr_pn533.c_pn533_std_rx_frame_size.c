
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pn533_std_frame {int datalen; } ;
struct pn533_ext_frame {int datalen; } ;


 int PN533_STD_FRAME_TAIL_LEN ;
 scalar_t__ PN533_STD_IS_EXTENDED (struct pn533_std_frame*) ;
 int be16_to_cpu (int ) ;

__attribute__((used)) static inline int pn533_std_rx_frame_size(void *frame)
{
 struct pn533_std_frame *f = frame;


 if (PN533_STD_IS_EXTENDED(f)) {
  struct pn533_ext_frame *eif = frame;

  return sizeof(struct pn533_ext_frame)
   + be16_to_cpu(eif->datalen) + PN533_STD_FRAME_TAIL_LEN;
 }

 return sizeof(struct pn533_std_frame) + f->datalen +
        PN533_STD_FRAME_TAIL_LEN;
}
