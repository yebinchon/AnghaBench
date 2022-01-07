
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct srp_rport {scalar_t__ roles; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ value; char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int sprintf (char*,char*,char*) ;
 TYPE_1__* srp_rport_role_names ;
 struct srp_rport* transport_class_to_srp_rport (struct device*) ;

__attribute__((used)) static ssize_t
show_srp_rport_roles(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct srp_rport *rport = transport_class_to_srp_rport(dev);
 int i;
 char *name = ((void*)0);

 for (i = 0; i < ARRAY_SIZE(srp_rport_role_names); i++)
  if (srp_rport_role_names[i].value == rport->roles) {
   name = srp_rport_role_names[i].name;
   break;
  }
 return sprintf(buf, "%s\n", name ? : "unknown");
}
