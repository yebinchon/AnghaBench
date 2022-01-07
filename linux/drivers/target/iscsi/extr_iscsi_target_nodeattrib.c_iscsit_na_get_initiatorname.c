
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_node_acl {char* initiatorname; } ;
struct iscsi_node_acl {struct se_node_acl se_node_acl; } ;



__attribute__((used)) static inline char *iscsit_na_get_initiatorname(
 struct iscsi_node_acl *nacl)
{
 struct se_node_acl *se_nacl = &nacl->se_node_acl;

 return &se_nacl->initiatorname[0];
}
