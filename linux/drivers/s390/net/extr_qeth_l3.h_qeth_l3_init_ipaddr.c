
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_ipaddr {int type; int proto; int disp_flag; } ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;
typedef enum qeth_ip_types { ____Placeholder_qeth_ip_types } qeth_ip_types ;


 int QETH_DISP_ADDR_DO_NOTHING ;
 int memset (struct qeth_ipaddr*,int ,int) ;

__attribute__((used)) static inline void qeth_l3_init_ipaddr(struct qeth_ipaddr *addr,
           enum qeth_ip_types type,
           enum qeth_prot_versions proto)
{
 memset(addr, 0, sizeof(*addr));
 addr->type = type;
 addr->proto = proto;
 addr->disp_flag = QETH_DISP_ADDR_DO_NOTHING;
}
