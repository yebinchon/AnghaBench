
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_member {int comm_seq; int weight; int nodeid; } ;
struct dlm_ls {int ls_num_nodes; } ;
struct dlm_config_node {int comm_seq; int weight; int nodeid; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int add_ordered_member (struct dlm_ls*,struct dlm_member*) ;
 int dlm_lowcomms_connect_node (int ) ;
 int kfree (struct dlm_member*) ;
 struct dlm_member* kzalloc (int,int ) ;

__attribute__((used)) static int dlm_add_member(struct dlm_ls *ls, struct dlm_config_node *node)
{
 struct dlm_member *memb;
 int error;

 memb = kzalloc(sizeof(*memb), GFP_NOFS);
 if (!memb)
  return -ENOMEM;

 error = dlm_lowcomms_connect_node(node->nodeid);
 if (error < 0) {
  kfree(memb);
  return error;
 }

 memb->nodeid = node->nodeid;
 memb->weight = node->weight;
 memb->comm_seq = node->comm_seq;
 add_ordered_member(ls, memb);
 ls->ls_num_nodes++;
 return 0;
}
