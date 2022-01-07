
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_dev {int ** rx_buf; } ;


 int RIOCM_RX_RING_SIZE ;
 int kfree (int *) ;

__attribute__((used)) static void riocm_rx_free(struct cm_dev *cm)
{
 int i;

 for (i = 0; i < RIOCM_RX_RING_SIZE; i++) {
  if (cm->rx_buf[i] != ((void*)0)) {
   kfree(cm->rx_buf[i]);
   cm->rx_buf[i] = ((void*)0);
  }
 }
}
