
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nci_dev {int dummy; } ;
struct fdp_nci_info {void (* data_pkt_counter_cb ) (struct nci_dev*) ;int data_pkt_counter; TYPE_2__* phy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* i2c_dev; } ;
struct TYPE_3__ {struct device dev; } ;


 int atomic_set (int *,int) ;
 int dev_dbg (struct device*,char*,int) ;
 struct fdp_nci_info* nci_get_drvdata (struct nci_dev*) ;

__attribute__((used)) static void fdp_nci_set_data_pkt_counter(struct nci_dev *ndev,
      void (*cb)(struct nci_dev *ndev), int count)
{
 struct fdp_nci_info *info = nci_get_drvdata(ndev);
 struct device *dev = &info->phy->i2c_dev->dev;

 dev_dbg(dev, "NCI data pkt counter %d\n", count);
 atomic_set(&info->data_pkt_counter, count);
 info->data_pkt_counter_cb = cb;
}
