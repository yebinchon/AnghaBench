
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_parent {int ref; } ;


 int kref_put (int *,int ) ;
 int mdev_release_parent ;

__attribute__((used)) static void mdev_put_parent(struct mdev_parent *parent)
{
 if (parent)
  kref_put(&parent->ref, mdev_release_parent);
}
