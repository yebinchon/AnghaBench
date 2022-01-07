
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct se_node_acl {int dummy; } ;


 int EINVAL ;
 scalar_t__ sbp_parse_wwn (char const*,int *) ;

__attribute__((used)) static int sbp_init_nodeacl(struct se_node_acl *se_nacl, const char *name)
{
 u64 guid = 0;

 if (sbp_parse_wwn(name, &guid) < 0)
  return -EINVAL;
 return 0;
}
