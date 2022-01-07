
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {scalar_t__ state; int conf_mutex; } ;
typedef int ssize_t ;


 scalar_t__ CARD_STATE_DOWN ;
 int EINVAL ;
 int EPERM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,char**,int) ;

__attribute__((used)) static ssize_t qeth_dev_blkt_store(struct qeth_card *card,
  const char *buf, size_t count, int *value, int max_value)
{
 char *tmp;
 int i, rc = 0;

 if (!card)
  return -EINVAL;

 mutex_lock(&card->conf_mutex);
 if (card->state != CARD_STATE_DOWN) {
  rc = -EPERM;
  goto out;
 }
 i = simple_strtoul(buf, &tmp, 10);
 if (i <= max_value)
  *value = i;
 else
  rc = -EINVAL;
out:
 mutex_unlock(&card->conf_mutex);
 return rc ? rc : count;
}
