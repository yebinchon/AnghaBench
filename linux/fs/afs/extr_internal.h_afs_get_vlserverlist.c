
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vlserver_list {int usage; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline struct afs_vlserver_list *afs_get_vlserverlist(struct afs_vlserver_list *vllist)
{
 if (vllist)
  atomic_inc(&vllist->usage);
 return vllist;
}
