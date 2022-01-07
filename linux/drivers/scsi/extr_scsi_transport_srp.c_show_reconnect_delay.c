
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_rport {int reconnect_delay; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int srp_show_tmo (char*,int ) ;
 struct srp_rport* transport_class_to_srp_rport (struct device*) ;

__attribute__((used)) static ssize_t show_reconnect_delay(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct srp_rport *rport = transport_class_to_srp_rport(dev);

 return srp_show_tmo(buf, rport->reconnect_delay);
}
