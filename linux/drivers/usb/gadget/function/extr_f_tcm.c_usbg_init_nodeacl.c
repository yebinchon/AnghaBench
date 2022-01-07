
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_node_acl {int dummy; } ;


 int EINVAL ;
 int usbg_check_wwn (char const*) ;

__attribute__((used)) static int usbg_init_nodeacl(struct se_node_acl *se_nacl, const char *name)
{
 if (!usbg_check_wwn(name))
  return -EINVAL;
 return 0;
}
