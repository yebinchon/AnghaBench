
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_parent {int ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static struct mdev_parent *mdev_get_parent(struct mdev_parent *parent)
{
 if (parent)
  kref_get(&parent->ref);

 return parent;
}
