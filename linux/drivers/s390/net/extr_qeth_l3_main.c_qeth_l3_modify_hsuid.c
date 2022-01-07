
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int* s6_addr; } ;
struct TYPE_7__ {TYPE_4__ addr; } ;
struct TYPE_5__ {TYPE_3__ a6; } ;
struct qeth_ipaddr {TYPE_1__ u; } ;
struct TYPE_6__ {int* hsuid; } ;
struct qeth_card {TYPE_2__ options; } ;


 int QETH_IP_TYPE_NORMAL ;
 int QETH_PROT_IPV6 ;
 int qeth_l3_init_ipaddr (struct qeth_ipaddr*,int ,int ) ;
 int qeth_l3_modify_ip (struct qeth_card*,struct qeth_ipaddr*,int) ;

int qeth_l3_modify_hsuid(struct qeth_card *card, bool add)
{
 struct qeth_ipaddr addr;
 unsigned int i;

 qeth_l3_init_ipaddr(&addr, QETH_IP_TYPE_NORMAL, QETH_PROT_IPV6);
 addr.u.a6.addr.s6_addr[0] = 0xfe;
 addr.u.a6.addr.s6_addr[1] = 0x80;
 for (i = 0; i < 8; i++)
  addr.u.a6.addr.s6_addr[8+i] = card->options.hsuid[i];

 return qeth_l3_modify_ip(card, &addr, add);
}
