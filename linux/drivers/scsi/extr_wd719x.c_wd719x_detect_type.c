
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wd719x {TYPE_1__* pdev; } ;
typedef enum wd719x_card_type { ____Placeholder_wd719x_card_type } wd719x_card_type ;
struct TYPE_2__ {int dev; } ;


 int WD719X_GPIO_ID_BITS ;
 int WD719X_PCI_GPIO_CONTROL ;
 int WD719X_PCI_GPIO_DATA ;
 int WD719X_TYPE_7193 ;
 int WD719X_TYPE_7197 ;
 int WD719X_TYPE_7296 ;
 int WD719X_TYPE_UNKNOWN ;
 int dev_warn (int *,char*,int) ;
 int wd719x_readb (struct wd719x*,int ) ;
 int wd719x_writeb (struct wd719x*,int ,int) ;

__attribute__((used)) static enum wd719x_card_type wd719x_detect_type(struct wd719x *wd)
{
 u8 card = wd719x_readb(wd, WD719X_PCI_GPIO_CONTROL);

 card |= WD719X_GPIO_ID_BITS;
 wd719x_writeb(wd, WD719X_PCI_GPIO_CONTROL, card);
 card = wd719x_readb(wd, WD719X_PCI_GPIO_DATA) & WD719X_GPIO_ID_BITS;
 switch (card) {
 case 0x08:
  return WD719X_TYPE_7193;
 case 0x02:
  return WD719X_TYPE_7197;
 case 0x00:
  return WD719X_TYPE_7296;
 default:
  dev_warn(&wd->pdev->dev, "unknown card type 0x%x\n", card);
  return WD719X_TYPE_UNKNOWN;
 }
}
