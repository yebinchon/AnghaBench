
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ** attrs; int match; int * class; } ;
struct TYPE_4__ {TYPE_3__ ac; } ;
struct raid_template {TYPE_1__ raid_attrs; } ;
struct raid_internal {struct raid_template r; int ** attrs; struct raid_function_template* f; } ;
struct raid_function_template {int dummy; } ;
struct TYPE_5__ {int class; } ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int RAID_NUM_ATTRS ;
 int attribute_container_register (TYPE_3__*) ;
 int dev_attr_level ;
 int dev_attr_resync ;
 int dev_attr_state ;
 struct raid_internal* kzalloc (int,int ) ;
 TYPE_2__ raid_class ;
 int raid_match ;
 scalar_t__ unlikely (int) ;

struct raid_template *
raid_class_attach(struct raid_function_template *ft)
{
 struct raid_internal *i = kzalloc(sizeof(struct raid_internal),
       GFP_KERNEL);
 int count = 0;

 if (unlikely(!i))
  return ((void*)0);

 i->f = ft;

 i->r.raid_attrs.ac.class = &raid_class.class;
 i->r.raid_attrs.ac.match = raid_match;
 i->r.raid_attrs.ac.attrs = &i->attrs[0];

 attribute_container_register(&i->r.raid_attrs.ac);

 i->attrs[count++] = &dev_attr_level;
 i->attrs[count++] = &dev_attr_resync;
 i->attrs[count++] = &dev_attr_state;

 i->attrs[count] = ((void*)0);
 BUG_ON(count > RAID_NUM_ATTRS);

 return &i->r;
}
