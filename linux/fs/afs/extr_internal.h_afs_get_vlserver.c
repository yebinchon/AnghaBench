
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_vlserver {int usage; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline struct afs_vlserver *afs_get_vlserver(struct afs_vlserver *vlserver)
{
 atomic_inc(&vlserver->usage);
 return vlserver;
}
