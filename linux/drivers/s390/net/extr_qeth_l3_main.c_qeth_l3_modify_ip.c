
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_ipaddr {int dummy; } ;
struct qeth_card {int ip_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qeth_l3_add_ip (struct qeth_card*,struct qeth_ipaddr*) ;
 int qeth_l3_delete_ip (struct qeth_card*,struct qeth_ipaddr*) ;

__attribute__((used)) static int qeth_l3_modify_ip(struct qeth_card *card, struct qeth_ipaddr *addr,
        bool add)
{
 int rc;

 mutex_lock(&card->ip_lock);
 rc = add ? qeth_l3_add_ip(card, addr) : qeth_l3_delete_ip(card, addr);
 mutex_unlock(&card->ip_lock);

 return rc;
}
