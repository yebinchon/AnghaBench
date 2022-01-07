
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct erofs_xattr_ibody_header {int dummy; } ;
typedef int __u32 ;
typedef int __le16 ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline unsigned int erofs_xattr_ibody_size(__le16 i_xattr_icount)
{
 if (!i_xattr_icount)
  return 0;

 return sizeof(struct erofs_xattr_ibody_header) +
  sizeof(__u32) * (le16_to_cpu(i_xattr_icount) - 1);
}
