
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffs_data {int ref; } ;


 int ENTER () ;
 int refcount_inc (int *) ;

__attribute__((used)) static void ffs_data_get(struct ffs_data *ffs)
{
 ENTER();

 refcount_inc(&ffs->ref);
}
