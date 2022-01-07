
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prop_handler {int (* validate ) (char const*,size_t) ;} ;


 int EINVAL ;
 scalar_t__ XATTR_BTRFS_PREFIX_LEN ;
 struct prop_handler* find_prop_handler (char const*,int *) ;
 scalar_t__ strlen (char const*) ;
 int stub1 (char const*,size_t) ;

int btrfs_validate_prop(const char *name, const char *value, size_t value_len)
{
 const struct prop_handler *handler;

 if (strlen(name) <= XATTR_BTRFS_PREFIX_LEN)
  return -EINVAL;

 handler = find_prop_handler(name, ((void*)0));
 if (!handler)
  return -EINVAL;

 if (value_len == 0)
  return 0;

 return handler->validate(value, value_len);
}
