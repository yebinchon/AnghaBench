
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_rport {int port_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int ) ;
 struct srp_rport* transport_class_to_srp_rport (struct device*) ;

__attribute__((used)) static ssize_t
show_srp_rport_id(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct srp_rport *rport = transport_class_to_srp_rport(dev);
 return sprintf(buf, "%16phC\n", rport->port_id);
}
