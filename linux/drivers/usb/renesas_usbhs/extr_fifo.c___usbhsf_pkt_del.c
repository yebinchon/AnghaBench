
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pkt {int node; } ;


 int list_del_init (int *) ;

__attribute__((used)) static void __usbhsf_pkt_del(struct usbhs_pkt *pkt)
{
 list_del_init(&pkt->node);
}
