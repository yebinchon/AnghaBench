
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct erofs_xattr_entry {int e_value_size; scalar_t__ e_name_len; } ;


 unsigned int EROFS_XATTR_ALIGN (scalar_t__) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static inline unsigned int erofs_xattr_entry_size(struct erofs_xattr_entry *e)
{
 return EROFS_XATTR_ALIGN(sizeof(struct erofs_xattr_entry) +
     e->e_name_len + le16_to_cpu(e->e_value_size));
}
