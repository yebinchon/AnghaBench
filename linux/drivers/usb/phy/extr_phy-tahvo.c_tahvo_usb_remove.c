
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tahvo_usb {int ick; int phy; int irq; } ;
struct platform_device {int dummy; } ;


 int IS_ERR (int ) ;
 int clk_disable (int ) ;
 int free_irq (int ,struct tahvo_usb*) ;
 struct tahvo_usb* platform_get_drvdata (struct platform_device*) ;
 int usb_remove_phy (int *) ;

__attribute__((used)) static int tahvo_usb_remove(struct platform_device *pdev)
{
 struct tahvo_usb *tu = platform_get_drvdata(pdev);

 free_irq(tu->irq, tu);
 usb_remove_phy(&tu->phy);
 if (!IS_ERR(tu->ick))
  clk_disable(tu->ick);

 return 0;
}
