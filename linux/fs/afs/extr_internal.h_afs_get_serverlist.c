
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_server_list {int usage; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static inline struct afs_server_list *afs_get_serverlist(struct afs_server_list *slist)
{
 refcount_inc(&slist->usage);
 return slist;
}
