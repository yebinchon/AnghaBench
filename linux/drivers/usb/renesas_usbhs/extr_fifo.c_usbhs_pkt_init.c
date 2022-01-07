
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pkt {int node; } ;


 int INIT_LIST_HEAD (int *) ;

void usbhs_pkt_init(struct usbhs_pkt *pkt)
{
 INIT_LIST_HEAD(&pkt->node);
}
