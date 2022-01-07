
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_volume {int usage; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline struct afs_volume *__afs_get_volume(struct afs_volume *volume)
{
 if (volume)
  atomic_inc(&volume->usage);
 return volume;
}
