
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_device {int dummy; } ;
struct slim_controller {int dummy; } ;
struct device_node {int dummy; } ;


 struct slim_device* of_find_slim_device (struct slim_controller*,struct device_node*) ;

struct slim_device *of_slim_get_device(struct slim_controller *ctrl,
           struct device_node *np)
{
 return of_find_slim_device(ctrl, np);
}
