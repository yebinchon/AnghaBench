
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int addr; } ;
struct TYPE_5__ {TYPE_1__ a6; } ;
struct qeth_ipaddr {int is_multicast; int hnode; int disp_flag; TYPE_2__ u; int mac; } ;
struct qeth_card {int ip_mc_htable; } ;
struct inet6_dev {struct ifmcaddr6* mc_list; } ;
struct in6_addr {int dummy; } ;
struct TYPE_6__ {int s6_addr; } ;
struct ifmcaddr6 {TYPE_3__ mca_addr; struct ifmcaddr6* next; } ;


 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_DISP_ADDR_ADD ;
 int QETH_DISP_ADDR_DO_NOTHING ;
 int QETH_PROT_IPV6 ;
 int ether_addr_copy (int ,int ) ;
 int hash_add (int ,int *,int ) ;
 int ipv6_eth_mc_map (TYPE_3__*,int ) ;
 int kfree (struct qeth_ipaddr*) ;
 int memcpy (int *,int *,int) ;
 struct qeth_ipaddr* qeth_l3_find_addr_by_ip (struct qeth_card*,struct qeth_ipaddr*) ;
 struct qeth_ipaddr* qeth_l3_get_addr_buffer (int ) ;
 int qeth_l3_ipaddr_hash (struct qeth_ipaddr*) ;

__attribute__((used)) static void qeth_l3_add_mc6_to_hash(struct qeth_card *card,
        struct inet6_dev *in6_dev)
{
 struct qeth_ipaddr *ipm;
 struct ifmcaddr6 *im6;
 struct qeth_ipaddr *tmp;

 QETH_CARD_TEXT(card, 4, "addmc6");

 tmp = qeth_l3_get_addr_buffer(QETH_PROT_IPV6);
 if (!tmp)
  return;

 for (im6 = in6_dev->mc_list; im6 != ((void*)0); im6 = im6->next) {
  ipv6_eth_mc_map(&im6->mca_addr, tmp->mac);
  memcpy(&tmp->u.a6.addr, &im6->mca_addr.s6_addr,
         sizeof(struct in6_addr));
  tmp->is_multicast = 1;

  ipm = qeth_l3_find_addr_by_ip(card, tmp);
  if (ipm) {

   ipm->disp_flag = QETH_DISP_ADDR_DO_NOTHING;
   continue;
  }

  ipm = qeth_l3_get_addr_buffer(QETH_PROT_IPV6);
  if (!ipm)
   continue;

  ether_addr_copy(ipm->mac, tmp->mac);
  memcpy(&ipm->u.a6.addr, &im6->mca_addr.s6_addr,
         sizeof(struct in6_addr));
  ipm->is_multicast = 1;
  ipm->disp_flag = QETH_DISP_ADDR_ADD;
  hash_add(card->ip_mc_htable,
    &ipm->hnode, qeth_l3_ipaddr_hash(ipm));

 }
 kfree(tmp);
}
