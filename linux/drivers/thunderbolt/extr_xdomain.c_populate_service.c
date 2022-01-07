
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_service {int key; int prtcstns; int prtcrevs; int prtcvers; int prtcid; } ;
struct tb_property_dir {int dummy; } ;
struct TYPE_2__ {int immediate; struct tb_property_dir* dir; } ;
struct tb_property {int key; TYPE_1__ value; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int TB_PROPERTY_TYPE_VALUE ;
 int kstrdup (int ,int ) ;
 struct tb_property* tb_property_find (struct tb_property_dir*,char*,int ) ;

__attribute__((used)) static int populate_service(struct tb_service *svc,
       struct tb_property *property)
{
 struct tb_property_dir *dir = property->value.dir;
 struct tb_property *p;


 p = tb_property_find(dir, "prtcid", TB_PROPERTY_TYPE_VALUE);
 if (p)
  svc->prtcid = p->value.immediate;
 p = tb_property_find(dir, "prtcvers", TB_PROPERTY_TYPE_VALUE);
 if (p)
  svc->prtcvers = p->value.immediate;
 p = tb_property_find(dir, "prtcrevs", TB_PROPERTY_TYPE_VALUE);
 if (p)
  svc->prtcrevs = p->value.immediate;
 p = tb_property_find(dir, "prtcstns", TB_PROPERTY_TYPE_VALUE);
 if (p)
  svc->prtcstns = p->value.immediate;

 svc->key = kstrdup(property->key, GFP_KERNEL);
 if (!svc->key)
  return -ENOMEM;

 return 0;
}
