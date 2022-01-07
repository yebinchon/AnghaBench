
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; int name; } ;
struct TYPE_5__ {int read; int size; TYPE_1__ attr; } ;
struct property {int name; TYPE_2__ attr; int length; } ;
struct device_node {int kobj; } ;


 int CONFIG_SYSFS ;
 int IS_ENABLED (int ) ;
 int WARN (int,char*,int ,struct device_node*) ;
 int of_kset ;
 int of_node_is_attached (struct device_node*) ;
 int of_node_property_read ;
 int safe_name (int *,int ) ;
 scalar_t__ strncmp (int ,char*,int) ;
 int sysfs_bin_attr_init (TYPE_2__*) ;
 int sysfs_create_bin_file (int *,TYPE_2__*) ;

int __of_add_property_sysfs(struct device_node *np, struct property *pp)
{
 int rc;


 bool secure = strncmp(pp->name, "security-", 9) == 0;

 if (!IS_ENABLED(CONFIG_SYSFS))
  return 0;

 if (!of_kset || !of_node_is_attached(np))
  return 0;

 sysfs_bin_attr_init(&pp->attr);
 pp->attr.attr.name = safe_name(&np->kobj, pp->name);
 pp->attr.attr.mode = secure ? 0400 : 0444;
 pp->attr.size = secure ? 0 : pp->length;
 pp->attr.read = of_node_property_read;

 rc = sysfs_create_bin_file(&np->kobj, &pp->attr);
 WARN(rc, "error adding attribute %s to node %pOF\n", pp->name, np);
 return rc;
}
