
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iscsi_endpoint {int dummy; } ;
struct device {int dummy; } ;


 struct device* class_find_device (int *,int *,int *,int ) ;
 struct iscsi_endpoint* iscsi_dev_to_endpoint (struct device*) ;
 int iscsi_endpoint_class ;
 int iscsi_match_epid ;
 int put_device (struct device*) ;

struct iscsi_endpoint *iscsi_lookup_endpoint(u64 handle)
{
 struct iscsi_endpoint *ep;
 struct device *dev;

 dev = class_find_device(&iscsi_endpoint_class, ((void*)0), &handle,
    iscsi_match_epid);
 if (!dev)
  return ((void*)0);

 ep = iscsi_dev_to_endpoint(dev);




 put_device(dev);
 return ep;
}
