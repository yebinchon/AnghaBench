
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int xceiv; int nb; } ;


 int usb_put_phy (int ) ;
 int usb_unregister_notifier (int ,int *) ;

__attribute__((used)) static int ux500_musb_exit(struct musb *musb)
{
 usb_unregister_notifier(musb->xceiv, &musb->nb);

 usb_put_phy(musb->xceiv);

 return 0;
}
