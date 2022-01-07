
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_client_dev {int dummy; } ;
struct device {int dummy; } ;


 struct ntb_transport_client_dev* dev_client_dev (struct device*) ;
 int kfree (struct ntb_transport_client_dev*) ;

__attribute__((used)) static void ntb_transport_client_release(struct device *dev)
{
 struct ntb_transport_client_dev *client_dev;

 client_dev = dev_client_dev(dev);
 kfree(client_dev);
}
