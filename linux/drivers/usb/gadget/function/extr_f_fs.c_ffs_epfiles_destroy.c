
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffs_epfile {int * dentry; int mutex; } ;


 int BUG_ON (int ) ;
 int ENTER () ;
 int d_delete (int *) ;
 int dput (int *) ;
 int kfree (struct ffs_epfile*) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void ffs_epfiles_destroy(struct ffs_epfile *epfiles, unsigned count)
{
 struct ffs_epfile *epfile = epfiles;

 ENTER();

 for (; count; --count, ++epfile) {
  BUG_ON(mutex_is_locked(&epfile->mutex));
  if (epfile->dentry) {
   d_delete(epfile->dentry);
   dput(epfile->dentry);
   epfile->dentry = ((void*)0);
  }
 }

 kfree(epfiles);
}
