
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_dev {scalar_t__ rx_slots; int ** rx_buf; int mport; } ;


 int GFP_KERNEL ;
 int RIOCM_RX_RING_SIZE ;
 int RIO_MAX_MSG_SIZE ;
 int cmbox ;
 int * kmalloc (int ,int ) ;
 int rio_add_inb_buffer (int ,int ,int *) ;

__attribute__((used)) static void riocm_rx_fill(struct cm_dev *cm, int nent)
{
 int i;

 if (cm->rx_slots == 0)
  return;

 for (i = 0; i < RIOCM_RX_RING_SIZE && cm->rx_slots && nent; i++) {
  if (cm->rx_buf[i] == ((void*)0)) {
   cm->rx_buf[i] = kmalloc(RIO_MAX_MSG_SIZE, GFP_KERNEL);
   if (cm->rx_buf[i] == ((void*)0))
    break;
   rio_add_inb_buffer(cm->mport, cmbox, cm->rx_buf[i]);
   cm->rx_slots--;
   nent--;
  }
 }
}
