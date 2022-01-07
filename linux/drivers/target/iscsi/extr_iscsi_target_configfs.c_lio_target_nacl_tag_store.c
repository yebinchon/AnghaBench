
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_node_acl {int se_tpg; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 struct se_node_acl* acl_to_nacl (struct config_item*) ;
 int core_tpg_set_initiator_node_tag (int ,struct se_node_acl*,char const*) ;

__attribute__((used)) static ssize_t lio_target_nacl_tag_store(struct config_item *item,
  const char *page, size_t count)
{
 struct se_node_acl *se_nacl = acl_to_nacl(item);
 int ret;

 ret = core_tpg_set_initiator_node_tag(se_nacl->se_tpg, se_nacl, page);

 if (ret < 0)
  return ret;
 return count;
}
