
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int nodeid; int addr_count; struct sockaddr_storage** addr; int list; } ;
struct dlm_node_addr {int nodeid; int addr_count; struct dlm_node_addr** addr; int list; } ;


 scalar_t__ DLM_MAX_ADDR_COUNT ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_NOFS ;
 int dlm_node_addrs ;
 int dlm_node_addrs_spin ;
 struct sockaddr_storage* find_node_addr (int) ;
 int kfree (struct sockaddr_storage*) ;
 struct sockaddr_storage* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (struct sockaddr_storage*,struct sockaddr_storage*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dlm_lowcomms_addr(int nodeid, struct sockaddr_storage *addr, int len)
{
 struct sockaddr_storage *new_addr;
 struct dlm_node_addr *new_node, *na;

 new_node = kzalloc(sizeof(struct dlm_node_addr), GFP_NOFS);
 if (!new_node)
  return -ENOMEM;

 new_addr = kzalloc(sizeof(struct sockaddr_storage), GFP_NOFS);
 if (!new_addr) {
  kfree(new_node);
  return -ENOMEM;
 }

 memcpy(new_addr, addr, len);

 spin_lock(&dlm_node_addrs_spin);
 na = find_node_addr(nodeid);
 if (!na) {
  new_node->nodeid = nodeid;
  new_node->addr[0] = new_addr;
  new_node->addr_count = 1;
  list_add(&new_node->list, &dlm_node_addrs);
  spin_unlock(&dlm_node_addrs_spin);
  return 0;
 }

 if (na->addr_count >= DLM_MAX_ADDR_COUNT) {
  spin_unlock(&dlm_node_addrs_spin);
  kfree(new_addr);
  kfree(new_node);
  return -ENOSPC;
 }

 na->addr[na->addr_count++] = new_addr;
 spin_unlock(&dlm_node_addrs_spin);
 kfree(new_node);
 return 0;
}
