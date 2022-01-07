
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct platform_device {int dev; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 void const* ERR_PTR (int) ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 void* devm_kmemdup (int *,int *,int,int ) ;
 int nvmem_get_mac_address (int *,int **) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 int put_device (int *) ;

__attribute__((used)) static const void *of_get_mac_addr_nvmem(struct device_node *np)
{
 int ret;
 const void *mac;
 u8 nvmem_mac[ETH_ALEN];
 struct platform_device *pdev = of_find_device_by_node(np);

 if (!pdev)
  return ERR_PTR(-ENODEV);

 ret = nvmem_get_mac_address(&pdev->dev, &nvmem_mac);
 if (ret) {
  put_device(&pdev->dev);
  return ERR_PTR(ret);
 }

 mac = devm_kmemdup(&pdev->dev, nvmem_mac, ETH_ALEN, GFP_KERNEL);
 put_device(&pdev->dev);
 if (!mac)
  return ERR_PTR(-ENOMEM);

 return mac;
}
