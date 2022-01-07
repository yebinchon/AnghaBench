
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_map {int dummy; } ;
struct kobject {int dummy; } ;


 int kfree (struct uio_map*) ;
 struct uio_map* to_map (struct kobject*) ;

__attribute__((used)) static void map_release(struct kobject *kobj)
{
 struct uio_map *map = to_map(kobj);
 kfree(map);
}
