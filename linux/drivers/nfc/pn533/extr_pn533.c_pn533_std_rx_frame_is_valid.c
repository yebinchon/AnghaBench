
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pn533_std_frame {scalar_t__ start_frame; scalar_t__ datalen_checksum; int datalen; int data; } ;
struct pn533_ext_frame {scalar_t__ datalen_checksum; int datalen; int data; } ;
struct pn533 {TYPE_1__* ops; } ;
struct TYPE_2__ {int rx_header_len; } ;


 scalar_t__ PN533_EXT_FRAME_CHECKSUM (struct pn533_ext_frame*) ;
 int PN533_EXT_FRAME_HEADER_LEN ;
 scalar_t__ PN533_STD_FRAME_CHECKSUM (struct pn533_std_frame*) ;
 int PN533_STD_FRAME_HEADER_LEN ;
 int PN533_STD_FRAME_SOF ;
 int PN533_STD_IS_EXTENDED (struct pn533_std_frame*) ;
 int be16_to_cpu (int ) ;
 scalar_t__ cpu_to_be16 (int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ pn533_ext_checksum (int ) ;
 scalar_t__ pn533_std_checksum (int ) ;
 scalar_t__ pn533_std_data_checksum (int ,int ) ;

__attribute__((used)) static bool pn533_std_rx_frame_is_valid(void *_frame, struct pn533 *dev)
{
 u8 checksum;
 struct pn533_std_frame *stdf = _frame;

 if (stdf->start_frame != cpu_to_be16(PN533_STD_FRAME_SOF))
  return 0;

 if (likely(!PN533_STD_IS_EXTENDED(stdf))) {

  dev->ops->rx_header_len = PN533_STD_FRAME_HEADER_LEN;

  checksum = pn533_std_checksum(stdf->datalen);
  if (checksum != stdf->datalen_checksum)
   return 0;

  checksum = pn533_std_data_checksum(stdf->data, stdf->datalen);
  if (checksum != PN533_STD_FRAME_CHECKSUM(stdf))
   return 0;
 } else {

  struct pn533_ext_frame *eif = _frame;

  dev->ops->rx_header_len = PN533_EXT_FRAME_HEADER_LEN;

  checksum = pn533_ext_checksum(be16_to_cpu(eif->datalen));
  if (checksum != eif->datalen_checksum)
   return 0;


  checksum = pn533_std_data_checksum(eif->data,
         be16_to_cpu(eif->datalen));
  if (checksum != PN533_EXT_FRAME_CHECKSUM(eif))
   return 0;
 }

 return 1;
}
