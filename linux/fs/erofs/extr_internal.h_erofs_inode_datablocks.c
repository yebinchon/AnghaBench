
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_size; } ;


 unsigned long DIV_ROUND_UP (int ,int ) ;
 int EROFS_BLKSIZ ;

__attribute__((used)) static inline unsigned long erofs_inode_datablocks(struct inode *inode)
{

 return DIV_ROUND_UP(inode->i_size, EROFS_BLKSIZ);
}
