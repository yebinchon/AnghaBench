
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dlm_node {int comm_seq; int nodeid; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 struct dlm_node* config_item_to_node (struct config_item*) ;
 int dlm_comm_seq (int ,int *) ;
 int kstrtoint (char const*,int ,int *) ;

__attribute__((used)) static ssize_t node_nodeid_store(struct config_item *item, const char *buf,
     size_t len)
{
 struct dlm_node *nd = config_item_to_node(item);
 uint32_t seq = 0;
 int rc = kstrtoint(buf, 0, &nd->nodeid);

 if (rc)
  return rc;
 dlm_comm_seq(nd->nodeid, &seq);
 nd->comm_seq = seq;
 return len;
}
