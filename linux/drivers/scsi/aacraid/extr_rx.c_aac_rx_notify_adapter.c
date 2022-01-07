
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct aac_dev {int dummy; } ;
struct TYPE_2__ {int IDR; } ;





 int BUG () ;




 int INBOUNDDOORBELL_1 ;
 int INBOUNDDOORBELL_2 ;
 int INBOUNDDOORBELL_3 ;
 int INBOUNDDOORBELL_4 ;
 int INBOUNDDOORBELL_5 ;
 int INBOUNDDOORBELL_6 ;
 TYPE_1__ MUnit ;
 int rx_writel (struct aac_dev*,int ,int ) ;

__attribute__((used)) static void aac_rx_notify_adapter(struct aac_dev *dev, u32 event)
{
 switch (event) {

 case 134:
  rx_writel(dev, MUnit.IDR,INBOUNDDOORBELL_1);
  break;
 case 129:
  rx_writel(dev, MUnit.IDR,INBOUNDDOORBELL_4);
  break;
 case 133:
  rx_writel(dev, MUnit.IDR,INBOUNDDOORBELL_2);
  break;
 case 130:
  rx_writel(dev, MUnit.IDR,INBOUNDDOORBELL_3);
  break;
 case 128:
  break;
 case 131:
  rx_writel(dev, MUnit.IDR,INBOUNDDOORBELL_6);
  break;
 case 132:
  rx_writel(dev, MUnit.IDR,INBOUNDDOORBELL_5);
  break;
 default:
  BUG();
  break;
 }
}
