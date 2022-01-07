
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct typec_altmode_desc {int mode; int roles; int vdo; int svid; } ;
struct TYPE_10__ {int * bus; int * type; TYPE_1__** groups; struct device* parent; } ;
struct typec_altmode {int mode; int active; TYPE_2__ dev; int vdo; int svid; } ;
struct device {int dummy; } ;
struct TYPE_9__ {int ** attrs; int name; } ;
struct altmode {unsigned int id; struct typec_altmode adev; int nh; TYPE_1__** groups; TYPE_1__ group; int ** attrs; int group_name; int roles; } ;
struct TYPE_14__ {int attr; } ;
struct TYPE_13__ {int attr; } ;
struct TYPE_12__ {int attr; } ;
struct TYPE_11__ {int attr; } ;


 int BLOCKING_INIT_NOTIFIER_HEAD (int *) ;
 int ENOMEM ;
 struct typec_altmode* ERR_PTR (int) ;
 int GFP_KERNEL ;
 unsigned int altmode_id_get (struct device*) ;
 TYPE_8__ dev_attr_active ;
 TYPE_7__ dev_attr_description ;
 TYPE_6__ dev_attr_supported_roles ;
 TYPE_5__ dev_attr_vdo ;
 int dev_err (struct device*,char*,int) ;
 int dev_name (struct device*) ;
 int dev_set_name (TYPE_2__*,char*,int ,unsigned int) ;
 int device_register (TYPE_2__*) ;
 scalar_t__ is_typec_partner (struct device*) ;
 int is_typec_port (struct device*) ;
 struct altmode* kzalloc (int,int ) ;
 int put_device (TYPE_2__*) ;
 int sprintf (int ,char*,int) ;
 int typec_altmode_dev_type ;
 int typec_altmode_set_partner (struct altmode*) ;
 int typec_bus ;

__attribute__((used)) static struct typec_altmode *
typec_register_altmode(struct device *parent,
         const struct typec_altmode_desc *desc)
{
 unsigned int id = altmode_id_get(parent);
 bool is_port = is_typec_port(parent);
 struct altmode *alt;
 int ret;

 alt = kzalloc(sizeof(*alt), GFP_KERNEL);
 if (!alt)
  return ERR_PTR(-ENOMEM);

 alt->adev.svid = desc->svid;
 alt->adev.mode = desc->mode;
 alt->adev.vdo = desc->vdo;
 alt->roles = desc->roles;
 alt->id = id;

 alt->attrs[0] = &dev_attr_vdo.attr;
 alt->attrs[1] = &dev_attr_description.attr;
 alt->attrs[2] = &dev_attr_active.attr;

 if (is_port) {
  alt->attrs[3] = &dev_attr_supported_roles.attr;
  alt->adev.active = 1;
 }

 sprintf(alt->group_name, "mode%d", desc->mode);
 alt->group.name = alt->group_name;
 alt->group.attrs = alt->attrs;
 alt->groups[0] = &alt->group;

 alt->adev.dev.parent = parent;
 alt->adev.dev.groups = alt->groups;
 alt->adev.dev.type = &typec_altmode_dev_type;
 dev_set_name(&alt->adev.dev, "%s.%u", dev_name(parent), id);


 if (is_port)
  BLOCKING_INIT_NOTIFIER_HEAD(&alt->nh);
 else
  typec_altmode_set_partner(alt);


 if (is_typec_partner(parent))
  alt->adev.dev.bus = &typec_bus;

 ret = device_register(&alt->adev.dev);
 if (ret) {
  dev_err(parent, "failed to register alternate mode (%d)\n",
   ret);
  put_device(&alt->adev.dev);
  return ERR_PTR(ret);
 }

 return &alt->adev;
}
