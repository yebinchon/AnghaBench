
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_dev {void** rx_buf; int rx_slots; int mport; } ;


 int RIOCM_RX_RING_SIZE ;
 int cmbox ;
 void* rio_get_inb_message (int ,int ) ;
 int riocm_warn (char*,void*) ;

__attribute__((used)) static void *riocm_rx_get_msg(struct cm_dev *cm)
{
 void *msg;
 int i;

 msg = rio_get_inb_message(cm->mport, cmbox);
 if (msg) {
  for (i = 0; i < RIOCM_RX_RING_SIZE; i++) {
   if (cm->rx_buf[i] == msg) {
    cm->rx_buf[i] = ((void*)0);
    cm->rx_slots++;
    break;
   }
  }

  if (i == RIOCM_RX_RING_SIZE)
   riocm_warn("no record for buffer 0x%p", msg);
 }

 return msg;
}
