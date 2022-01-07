
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_xdomain {int * vendor_name; int * device_name; int vendor; int device; } ;
struct tb_property_dir {int dummy; } ;
struct TYPE_2__ {int text; int immediate; } ;
struct tb_property {TYPE_1__ value; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int TB_PROPERTY_TYPE_TEXT ;
 int TB_PROPERTY_TYPE_VALUE ;
 int kfree (int *) ;
 void* kstrdup (int ,int ) ;
 struct tb_property* tb_property_find (struct tb_property_dir*,char*,int ) ;

__attribute__((used)) static int populate_properties(struct tb_xdomain *xd,
          struct tb_property_dir *dir)
{
 const struct tb_property *p;


 p = tb_property_find(dir, "deviceid", TB_PROPERTY_TYPE_VALUE);
 if (!p)
  return -EINVAL;
 xd->device = p->value.immediate;

 p = tb_property_find(dir, "vendorid", TB_PROPERTY_TYPE_VALUE);
 if (!p)
  return -EINVAL;
 xd->vendor = p->value.immediate;

 kfree(xd->device_name);
 xd->device_name = ((void*)0);
 kfree(xd->vendor_name);
 xd->vendor_name = ((void*)0);


 p = tb_property_find(dir, "deviceid", TB_PROPERTY_TYPE_TEXT);
 if (p)
  xd->device_name = kstrdup(p->value.text, GFP_KERNEL);
 p = tb_property_find(dir, "vendorid", TB_PROPERTY_TYPE_TEXT);
 if (p)
  xd->vendor_name = kstrdup(p->value.text, GFP_KERNEL);

 return 0;
}
