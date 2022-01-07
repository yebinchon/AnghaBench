
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


typedef void* u32 ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct knav_device {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_15__ {int * link_rams; struct device* dev; void* num_queues; void* base_id; int pdsps; int regions; int pools; int qmgrs; int queue_ranges; int version; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int QMSS_66AK2G ;
 int S_IFREG ;
 int S_IRUGO ;
 int debugfs_create_file (char*,int,int *,int *,int *) ;
 int dev_err (struct device*,char*) ;
 int device_ready ;
 TYPE_1__* devm_kzalloc (struct device*,int,int ) ;
 TYPE_1__* kdev ;
 int keystone_qmss_of_match ;
 int knav_free_queue_ranges (TYPE_1__*) ;
 int knav_get_link_ram (TYPE_1__*,char*,int *) ;
 int knav_queue_debug_ops ;
 int knav_queue_free_regions (TYPE_1__*) ;
 int knav_queue_init_pdsps (TYPE_1__*,struct device_node*) ;
 int knav_queue_init_qmgrs (TYPE_1__*,struct device_node*) ;
 int knav_queue_init_queues (TYPE_1__*) ;
 int knav_queue_setup_link_ram (TYPE_1__*) ;
 int knav_queue_setup_regions (TYPE_1__*,struct device_node*) ;
 int knav_queue_start_pdsps (TYPE_1__*) ;
 int knav_queue_stop_pdsps (TYPE_1__*) ;
 int knav_setup_queue_pools (TYPE_1__*,struct device_node*) ;
 struct device_node* of_get_child_by_name (struct device_node*,char*) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int of_match_ptr (int ) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ of_property_read_u32_array (struct device_node*,char*,void**,int) ;
 int platform_set_drvdata (struct platform_device*,TYPE_1__*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;

__attribute__((used)) static int knav_queue_probe(struct platform_device *pdev)
{
 struct device_node *node = pdev->dev.of_node;
 struct device_node *qmgrs, *queue_pools, *regions, *pdsps;
 const struct of_device_id *match;
 struct device *dev = &pdev->dev;
 u32 temp[2];
 int ret;

 if (!node) {
  dev_err(dev, "device tree info unavailable\n");
  return -ENODEV;
 }

 kdev = devm_kzalloc(dev, sizeof(struct knav_device), GFP_KERNEL);
 if (!kdev) {
  dev_err(dev, "memory allocation failed\n");
  return -ENOMEM;
 }

 match = of_match_device(of_match_ptr(keystone_qmss_of_match), dev);
 if (match && match->data)
  kdev->version = QMSS_66AK2G;

 platform_set_drvdata(pdev, kdev);
 kdev->dev = dev;
 INIT_LIST_HEAD(&kdev->queue_ranges);
 INIT_LIST_HEAD(&kdev->qmgrs);
 INIT_LIST_HEAD(&kdev->pools);
 INIT_LIST_HEAD(&kdev->regions);
 INIT_LIST_HEAD(&kdev->pdsps);

 pm_runtime_enable(&pdev->dev);
 ret = pm_runtime_get_sync(&pdev->dev);
 if (ret < 0) {
  dev_err(dev, "Failed to enable QMSS\n");
  return ret;
 }

 if (of_property_read_u32_array(node, "queue-range", temp, 2)) {
  dev_err(dev, "queue-range not specified\n");
  ret = -ENODEV;
  goto err;
 }
 kdev->base_id = temp[0];
 kdev->num_queues = temp[1];


 qmgrs = of_get_child_by_name(node, "qmgrs");
 if (!qmgrs) {
  dev_err(dev, "queue manager info not specified\n");
  ret = -ENODEV;
  goto err;
 }
 ret = knav_queue_init_qmgrs(kdev, qmgrs);
 of_node_put(qmgrs);
 if (ret)
  goto err;


 pdsps = of_get_child_by_name(node, "pdsps");
 if (pdsps) {
  ret = knav_queue_init_pdsps(kdev, pdsps);
  if (ret)
   goto err;

  ret = knav_queue_start_pdsps(kdev);
  if (ret)
   goto err;
 }
 of_node_put(pdsps);


 queue_pools = of_get_child_by_name(node, "queue-pools");
 if (!queue_pools) {
  dev_err(dev, "queue-pools not specified\n");
  ret = -ENODEV;
  goto err;
 }
 ret = knav_setup_queue_pools(kdev, queue_pools);
 of_node_put(queue_pools);
 if (ret)
  goto err;

 ret = knav_get_link_ram(kdev, "linkram0", &kdev->link_rams[0]);
 if (ret) {
  dev_err(kdev->dev, "could not setup linking ram\n");
  goto err;
 }

 ret = knav_get_link_ram(kdev, "linkram1", &kdev->link_rams[1]);
 if (ret) {




 }

 ret = knav_queue_setup_link_ram(kdev);
 if (ret)
  goto err;

 regions = of_get_child_by_name(node, "descriptor-regions");
 if (!regions) {
  dev_err(dev, "descriptor-regions not specified\n");
  goto err;
 }
 ret = knav_queue_setup_regions(kdev, regions);
 of_node_put(regions);
 if (ret)
  goto err;

 ret = knav_queue_init_queues(kdev);
 if (ret < 0) {
  dev_err(dev, "hwqueue initialization failed\n");
  goto err;
 }

 debugfs_create_file("qmss", S_IFREG | S_IRUGO, ((void*)0), ((void*)0),
       &knav_queue_debug_ops);
 device_ready = 1;
 return 0;

err:
 knav_queue_stop_pdsps(kdev);
 knav_queue_free_regions(kdev);
 knav_free_queue_ranges(kdev);
 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 return ret;
}
