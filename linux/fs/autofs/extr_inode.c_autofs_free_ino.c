
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_info {int dummy; } ;


 int kfree_rcu (struct autofs_info*,int ) ;
 int rcu ;

void autofs_free_ino(struct autofs_info *ino)
{
 kfree_rcu(ino, rcu);
}
