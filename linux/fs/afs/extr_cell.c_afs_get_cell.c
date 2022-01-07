
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_cell {int usage; } ;


 int atomic_inc (int *) ;

struct afs_cell *afs_get_cell(struct afs_cell *cell)
{
 atomic_inc(&cell->usage);
 return cell;
}
