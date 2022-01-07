
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct rpmsg_device {int ept; struct device dev; } ;
struct apr {int svcs_idr; int svcs_lock; int rx_lock; int rx_list; int rx_work; struct device* dev; int rxwq; int ch; int dest_domain_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int apr_rxwq ;
 int create_singlethread_workqueue (char*) ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct apr*) ;
 struct apr* devm_kzalloc (struct device*,int,int ) ;
 int idr_init (int *) ;
 int of_property_read_u32 (int ,char*,int *) ;
 int of_register_apr_devices (struct device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int apr_probe(struct rpmsg_device *rpdev)
{
 struct device *dev = &rpdev->dev;
 struct apr *apr;
 int ret;

 apr = devm_kzalloc(dev, sizeof(*apr), GFP_KERNEL);
 if (!apr)
  return -ENOMEM;

 ret = of_property_read_u32(dev->of_node, "qcom,apr-domain", &apr->dest_domain_id);
 if (ret) {
  dev_err(dev, "APR Domain ID not specified in DT\n");
  return ret;
 }

 dev_set_drvdata(dev, apr);
 apr->ch = rpdev->ept;
 apr->dev = dev;
 apr->rxwq = create_singlethread_workqueue("qcom_apr_rx");
 if (!apr->rxwq) {
  dev_err(apr->dev, "Failed to start Rx WQ\n");
  return -ENOMEM;
 }
 INIT_WORK(&apr->rx_work, apr_rxwq);
 INIT_LIST_HEAD(&apr->rx_list);
 spin_lock_init(&apr->rx_lock);
 spin_lock_init(&apr->svcs_lock);
 idr_init(&apr->svcs_idr);
 of_register_apr_devices(dev);

 return 0;
}
