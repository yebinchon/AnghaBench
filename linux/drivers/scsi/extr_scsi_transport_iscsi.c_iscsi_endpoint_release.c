
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_endpoint {int dummy; } ;
struct device {int dummy; } ;


 struct iscsi_endpoint* iscsi_dev_to_endpoint (struct device*) ;
 int kfree (struct iscsi_endpoint*) ;

__attribute__((used)) static void iscsi_endpoint_release(struct device *dev)
{
 struct iscsi_endpoint *ep = iscsi_dev_to_endpoint(dev);
 kfree(ep);
}
