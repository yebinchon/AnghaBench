
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int loadaddr; } ;


 TYPE_1__* ADFS_I (struct inode*) ;

__attribute__((used)) static inline bool adfs_inode_is_stamped(struct inode *inode)
{
 return (ADFS_I(inode)->loadaddr & 0xfff00000) == 0xfff00000;
}
