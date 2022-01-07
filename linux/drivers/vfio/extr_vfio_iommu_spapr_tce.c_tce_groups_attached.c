
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tce_container {int group_list; } ;


 int list_empty (int *) ;

__attribute__((used)) static inline bool tce_groups_attached(struct tce_container *container)
{
 return !list_empty(&container->group_list);
}
