
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_rport {int state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum srp_rport_state { ____Placeholder_srp_rport_state } srp_rport_state ;


 unsigned int ARRAY_SIZE (char const* const*) ;




 int sprintf (char*,char*,char const* const) ;
 struct srp_rport* transport_class_to_srp_rport (struct device*) ;

__attribute__((used)) static ssize_t show_srp_rport_state(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 static const char *const state_name[] = {
  [128] = "running",
  [131] = "blocked",
  [130] = "fail-fast",
  [129] = "lost",
 };
 struct srp_rport *rport = transport_class_to_srp_rport(dev);
 enum srp_rport_state state = rport->state;

 return sprintf(buf, "%s\n",
         (unsigned)state < ARRAY_SIZE(state_name) ?
         state_name[state] : "???");
}
