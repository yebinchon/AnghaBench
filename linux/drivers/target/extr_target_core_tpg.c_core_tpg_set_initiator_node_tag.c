
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_portal_group {int dummy; } ;
struct se_node_acl {char* acl_tag; } ;


 int EINVAL ;
 scalar_t__ MAX_ACL_TAG_SIZE ;
 int snprintf (char*,scalar_t__,char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int strncmp (char*,char const*,int) ;

int core_tpg_set_initiator_node_tag(
 struct se_portal_group *tpg,
 struct se_node_acl *acl,
 const char *new_tag)
{
 if (strlen(new_tag) >= MAX_ACL_TAG_SIZE)
  return -EINVAL;

 if (!strncmp("NULL", new_tag, 4)) {
  acl->acl_tag[0] = '\0';
  return 0;
 }

 return snprintf(acl->acl_tag, MAX_ACL_TAG_SIZE, "%s", new_tag);
}
