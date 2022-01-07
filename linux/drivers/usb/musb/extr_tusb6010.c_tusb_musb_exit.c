
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int xceiv; int sync_va; int (* board_set_power ) (int ) ;int dev_timer; } ;


 int del_timer_sync (int *) ;
 int iounmap (int ) ;
 int stub1 (int ) ;
 int * the_musb ;
 int usb_put_phy (int ) ;

__attribute__((used)) static int tusb_musb_exit(struct musb *musb)
{
 del_timer_sync(&musb->dev_timer);
 the_musb = ((void*)0);

 if (musb->board_set_power)
  musb->board_set_power(0);

 iounmap(musb->sync_va);

 usb_put_phy(musb->xceiv);
 return 0;
}
