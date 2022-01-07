
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qeth_ipato_entry {int proto; int mask_bits; int addr; } ;
struct qeth_card {int conf_mutex; } ;
typedef int ssize_t ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QETH_PROT_IPV4 ;
 int kfree (struct qeth_ipato_entry*) ;
 struct qeth_ipato_entry* kzalloc (int,int ) ;
 int memcpy (int ,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qeth_l3_add_ipato_entry (struct qeth_card*,struct qeth_ipato_entry*) ;
 int qeth_l3_parse_ipatoe (char const*,int,int *,int*) ;

__attribute__((used)) static ssize_t qeth_l3_dev_ipato_add_store(const char *buf, size_t count,
    struct qeth_card *card, enum qeth_prot_versions proto)
{
 struct qeth_ipato_entry *ipatoe;
 u8 addr[16];
 int mask_bits;
 int rc = 0;

 mutex_lock(&card->conf_mutex);
 rc = qeth_l3_parse_ipatoe(buf, proto, addr, &mask_bits);
 if (rc)
  goto out;

 ipatoe = kzalloc(sizeof(struct qeth_ipato_entry), GFP_KERNEL);
 if (!ipatoe) {
  rc = -ENOMEM;
  goto out;
 }
 ipatoe->proto = proto;
 memcpy(ipatoe->addr, addr, (proto == QETH_PROT_IPV4)? 4:16);
 ipatoe->mask_bits = mask_bits;

 rc = qeth_l3_add_ipato_entry(card, ipatoe);
 if (rc)
  kfree(ipatoe);
out:
 mutex_unlock(&card->conf_mutex);
 return rc ? rc : count;
}
