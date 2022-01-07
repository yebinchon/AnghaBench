
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {scalar_t__ port_mode; } ;


 scalar_t__ MUSB_HOST ;

__attribute__((used)) static int musb_has_gadget(struct musb *musb)
{
 return musb->port_mode == MUSB_HOST;

}
