
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct device_node {int dummy; } ;



__attribute__((used)) static inline void __of_update_property_sysfs(struct device_node *np,
  struct property *newprop, struct property *oldprop) {}
