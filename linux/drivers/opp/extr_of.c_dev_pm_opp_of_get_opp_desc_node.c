
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {int of_node; } ;


 struct device_node* _opp_of_get_opp_desc_node (int ,int ) ;

struct device_node *dev_pm_opp_of_get_opp_desc_node(struct device *dev)
{
 return _opp_of_get_opp_desc_node(dev->of_node, 0);
}
