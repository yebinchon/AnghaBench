
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qeth_card {int conf_mutex; } ;
typedef int ssize_t ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;


 int QETH_IP_TYPE_RXIP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qeth_l3_modify_rxip_vipa (struct qeth_card*,int,int *,int ,int) ;
 int qeth_l3_parse_rxipe (char const*,int,int *) ;

__attribute__((used)) static ssize_t qeth_l3_dev_rxip_add_store(const char *buf, size_t count,
   struct qeth_card *card, enum qeth_prot_versions proto)
{
 u8 addr[16] = {0, };
 int rc;

 mutex_lock(&card->conf_mutex);
 rc = qeth_l3_parse_rxipe(buf, proto, addr);
 if (!rc)
  rc = qeth_l3_modify_rxip_vipa(card, 1, addr,
           QETH_IP_TYPE_RXIP, proto);
 mutex_unlock(&card->conf_mutex);
 return rc ? rc : count;
}
