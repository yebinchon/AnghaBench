
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_volume {int usage; int name; } ;
struct afs_cell {int net; } ;


 int _enter (char*,int ) ;
 int afs_destroy_volume (int ,struct afs_volume*) ;
 scalar_t__ atomic_dec_and_test (int *) ;

void afs_put_volume(struct afs_cell *cell, struct afs_volume *volume)
{
 if (volume) {
  _enter("%s", volume->name);

  if (atomic_dec_and_test(&volume->usage))
   afs_destroy_volume(cell->net, volume);
 }
}
