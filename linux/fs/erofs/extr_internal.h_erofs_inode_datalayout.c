
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EROFS_I_DATALAYOUT_BIT ;
 int EROFS_I_DATALAYOUT_BITS ;
 unsigned int erofs_bitrange (unsigned int,int ,int ) ;

__attribute__((used)) static inline unsigned int erofs_inode_datalayout(unsigned int value)
{
 return erofs_bitrange(value, EROFS_I_DATALAYOUT_BIT,
         EROFS_I_DATALAYOUT_BITS);
}
