
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adfs_dir {int nr_buffers; int * sb; int * bh_fplus; int * bh; } ;


 int brelse (int ) ;
 int kfree (int *) ;

__attribute__((used)) static void
adfs_fplus_free(struct adfs_dir *dir)
{
 int i;

 if (dir->bh_fplus) {
  for (i = 0; i < dir->nr_buffers; i++)
   brelse(dir->bh_fplus[i]);

  if (&dir->bh[0] != dir->bh_fplus)
   kfree(dir->bh_fplus);

  dir->bh_fplus = ((void*)0);
 }

 dir->nr_buffers = 0;
 dir->sb = ((void*)0);
}
