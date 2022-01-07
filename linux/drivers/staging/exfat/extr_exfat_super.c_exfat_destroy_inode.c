
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_3__ {int * target; } ;


 TYPE_1__* EXFAT_I (struct inode*) ;
 int exfat_inode_cachep ;
 int kfree (int *) ;
 int kmem_cache_free (int ,TYPE_1__*) ;

__attribute__((used)) static void exfat_destroy_inode(struct inode *inode)
{
 kfree(EXFAT_I(inode)->target);
 EXFAT_I(inode)->target = ((void*)0);

 kmem_cache_free(exfat_inode_cachep, EXFAT_I(inode));
}
