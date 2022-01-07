
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct srp_rport {struct device dev; } ;


 int device_del (struct device*) ;
 int put_device (struct device*) ;
 int transport_destroy_device (struct device*) ;
 int transport_remove_device (struct device*) ;

void srp_rport_del(struct srp_rport *rport)
{
 struct device *dev = &rport->dev;

 transport_remove_device(dev);
 device_del(dev);
 transport_destroy_device(dev);

 put_device(dev);
}
