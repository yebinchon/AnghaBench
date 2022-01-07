
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_node_acl {int acl_kref; } ;


 int kref_put (int *,int ) ;
 int target_complete_nacl ;

void target_put_nacl(struct se_node_acl *nacl)
{
 kref_put(&nacl->acl_kref, target_complete_nacl);
}
