
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_ipaddr {int dummy; } ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;


 int GFP_ATOMIC ;
 int QETH_IP_TYPE_NORMAL ;
 struct qeth_ipaddr* kmalloc (int,int ) ;
 int qeth_l3_init_ipaddr (struct qeth_ipaddr*,int ,int) ;

__attribute__((used)) static struct qeth_ipaddr *qeth_l3_get_addr_buffer(enum qeth_prot_versions prot)
{
 struct qeth_ipaddr *addr = kmalloc(sizeof(*addr), GFP_ATOMIC);

 if (addr)
  qeth_l3_init_ipaddr(addr, QETH_IP_TYPE_NORMAL, prot);
 return addr;
}
