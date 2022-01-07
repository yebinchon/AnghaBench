
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct raid_template {int dummy; } ;
struct TYPE_3__ {int ac; } ;
struct TYPE_4__ {TYPE_1__ raid_attrs; } ;
struct raid_internal {TYPE_2__ r; } ;


 int BUG_ON (int ) ;
 int attribute_container_unregister (int *) ;
 int kfree (struct raid_internal*) ;
 struct raid_internal* to_raid_internal (struct raid_template*) ;

void
raid_class_release(struct raid_template *r)
{
 struct raid_internal *i = to_raid_internal(r);

 BUG_ON(attribute_container_unregister(&i->r.raid_attrs.ac));

 kfree(i);
}
