
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* addr; } ;
struct TYPE_4__ {TYPE_1__ a4; } ;
struct qeth_ipaddr {int is_multicast; int hnode; int disp_flag; TYPE_2__ u; int mac; } ;
struct qeth_card {int ip_mc_htable; } ;
struct ip_mc_list {int multiaddr; int next_rcu; } ;
struct in_device {int mc_list; } ;


 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_DISP_ADDR_ADD ;
 int QETH_DISP_ADDR_DO_NOTHING ;
 int QETH_PROT_IPV4 ;
 void* be32_to_cpu (int ) ;
 int ether_addr_copy (int ,int ) ;
 int hash_add (int ,int *,int ) ;
 int ip_eth_mc_map (int ,int ) ;
 int kfree (struct qeth_ipaddr*) ;
 struct qeth_ipaddr* qeth_l3_find_addr_by_ip (struct qeth_card*,struct qeth_ipaddr*) ;
 struct qeth_ipaddr* qeth_l3_get_addr_buffer (int ) ;
 int qeth_l3_ipaddr_hash (struct qeth_ipaddr*) ;
 struct ip_mc_list* rcu_dereference (int ) ;

__attribute__((used)) static void
qeth_l3_add_mc_to_hash(struct qeth_card *card, struct in_device *in4_dev)
{
 struct ip_mc_list *im4;
 struct qeth_ipaddr *tmp, *ipm;

 QETH_CARD_TEXT(card, 4, "addmc");

 tmp = qeth_l3_get_addr_buffer(QETH_PROT_IPV4);
 if (!tmp)
  return;

 for (im4 = rcu_dereference(in4_dev->mc_list); im4 != ((void*)0);
      im4 = rcu_dereference(im4->next_rcu)) {
  ip_eth_mc_map(im4->multiaddr, tmp->mac);
  tmp->u.a4.addr = be32_to_cpu(im4->multiaddr);
  tmp->is_multicast = 1;

  ipm = qeth_l3_find_addr_by_ip(card, tmp);
  if (ipm) {

   ipm->disp_flag = QETH_DISP_ADDR_DO_NOTHING;
  } else {
   ipm = qeth_l3_get_addr_buffer(QETH_PROT_IPV4);
   if (!ipm)
    continue;
   ether_addr_copy(ipm->mac, tmp->mac);
   ipm->u.a4.addr = be32_to_cpu(im4->multiaddr);
   ipm->is_multicast = 1;
   ipm->disp_flag = QETH_DISP_ADDR_ADD;
   hash_add(card->ip_mc_htable,
     &ipm->hnode, qeth_l3_ipaddr_hash(ipm));
  }
 }

 kfree(tmp);
}
