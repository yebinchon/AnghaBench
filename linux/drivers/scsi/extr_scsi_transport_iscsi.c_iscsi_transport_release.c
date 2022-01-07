
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_internal {int dummy; } ;
struct device {int dummy; } ;


 struct iscsi_internal* dev_to_iscsi_internal (struct device*) ;
 int kfree (struct iscsi_internal*) ;

__attribute__((used)) static void iscsi_transport_release(struct device *dev)
{
 struct iscsi_internal *priv = dev_to_iscsi_internal(dev);
 kfree(priv);
}
