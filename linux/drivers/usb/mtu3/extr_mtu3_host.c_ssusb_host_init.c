
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,struct device_node*) ;
 int dev_info (struct device*,char*) ;
 int of_platform_populate (struct device_node*,int *,int *,struct device*) ;
 int ssusb_host_setup (struct ssusb_mtk*) ;

int ssusb_host_init(struct ssusb_mtk *ssusb, struct device_node *parent_dn)
{
 struct device *parent_dev = ssusb->dev;
 int ret;

 ssusb_host_setup(ssusb);

 ret = of_platform_populate(parent_dn, ((void*)0), ((void*)0), parent_dev);
 if (ret) {
  dev_dbg(parent_dev, "failed to create child devices at %pOF\n",
    parent_dn);
  return ret;
 }

 dev_info(parent_dev, "xHCI platform device register success...\n");

 return 0;
}
